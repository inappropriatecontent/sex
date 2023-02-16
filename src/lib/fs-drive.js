const getFiles = async (
  dirHandle,
  recursive,
  path = dirHandle.name,
  skipDirectory
) => {
  const dirs = [];
  const files = [];
  for await (const entry of dirHandle.values()) {
    const nestedPath = `${path}/${entry.name}`;
    if (entry.kind === 'file') {
      files.push(
        entry.getFile().then((file) => {
          file.directoryHandle = dirHandle;
          file.handle = entry;
          return Object.defineProperty(file, 'webkitRelativePath', {
            configurable: true,
            enumerable: true,
            get: () => nestedPath,
          });
        })
      );
    } else if (
      entry.kind === 'directory' &&
      recursive &&
      (!skipDirectory || !skipDirectory(entry))
    ) {
      dirs.push(getFiles(entry, recursive, nestedPath, skipDirectory));
    }
  }
  return [...(await Promise.all(dirs)).flat(), ...(await Promise.all(files))];
};

const getFolder = async () => window.showDirectoryPicker().then(handle => getFiles(handle, false))

const getDrive = async () => {
  const handle = await window.showDirectoryPicker({
    mode: 'read',
  });
  const handles = await getFiles(handle, true, undefined, e => !e.name.startsWith('.'));
  return { drive: handle.name, vids: handles.filter(e => e.type.startsWith('video')) }
};
