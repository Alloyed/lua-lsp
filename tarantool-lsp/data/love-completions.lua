return {
  global = {
    fields = {
      love = {
        fields = {
          audio = {
            description = "Provides an interface to create noise with the user's speakers.",
            fields = {
              getDistanceModel = {
                args = {},
                description = "Returns the distance attenuation model.",
                link = "https://love2d.org/wiki/love.audio.getDistanceModel",
                returnTypes = {
                  {
                    name = "DistanceModel",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getDopplerScale = {
                args = {},
                description = "Gets the current global scale factor for velocity-based doppler effects.",
                link = "https://love2d.org/wiki/love.audio.getDopplerScale",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getOrientation = {
                args = {},
                description = "Returns the orientation of the listener.",
                link = "https://love2d.org/wiki/love.audio.getOrientation",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getPosition = {
                args = {},
                description = "Returns the position of the listener.",
                link = "https://love2d.org/wiki/love.audio.getPosition",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getSourceCount = {
                args = {},
                description = "Returns the number of sources which are currently playing or paused.",
                link = "https://love2d.org/wiki/love.audio.getSourceCount",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getVelocity = {
                args = {},
                description = "Returns the velocity of the listener.",
                link = "https://love2d.org/wiki/love.audio.getVelocity",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getVolume = {
                args = {},
                description = "Returns the master volume.",
                link = "https://love2d.org/wiki/love.audio.getVolume",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              newSource = {
                link = "https://love2d.org/wiki/love.audio.newSource",
                returnTypes = {
                  {
                    name = "Source",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        displayName = "[type]",
                        name = "type"
                      }
                    },
                    description = "Creates a new Source from a file or SoundData. Sources created from SoundData are always static."
                  },
                  {
                    args = {
                      {
                        name = "file"
                      },
                      {
                        displayName = "[type]",
                        name = "type"
                      }
                    },
                    description = "Creates a new Source from a file or SoundData. Sources created from SoundData are always static."
                  },
                  {
                    args = {
                      {
                        name = "decoder"
                      },
                      {
                        displayName = "[type]",
                        name = "type"
                      }
                    },
                    description = "Creates a new Source from a file or SoundData. Sources created from SoundData are always static."
                  },
                  {
                    args = {
                      {
                        name = "soundData"
                      }
                    },
                    description = "Creates a new Source from a file or SoundData. Sources created from SoundData are always static."
                  },
                  {
                    args = {
                      {
                        name = "fileData"
                      }
                    },
                    description = "Creates a new Source from a file or SoundData. Sources created from SoundData are always static."
                  }
                }
              },
              pause = {
                link = "https://love2d.org/wiki/love.audio.pause",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "This function will pause all currently active Sources."
                  },
                  {
                    args = {
                      {
                        name = "source"
                      }
                    },
                    description = "This function will only pause the specified Source."
                  }
                }
              },
              play = {
                args = {
                  {
                    name = "source"
                  }
                },
                description = "Plays the specified Source.",
                link = "https://love2d.org/wiki/love.audio.play",
                type = "function"
              },
              resume = {
                link = "https://love2d.org/wiki/love.audio.resume",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Resumes all audio"
                  },
                  {
                    args = {
                      {
                        name = "source"
                      }
                    },
                    description = "Resumes all audio"
                  }
                }
              },
              rewind = {
                link = "https://love2d.org/wiki/love.audio.rewind",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Rewinds all playing audio."
                  },
                  {
                    args = {
                      {
                        name = "source"
                      }
                    },
                    description = "Rewinds all playing audio."
                  }
                }
              },
              setDistanceModel = {
                args = {
                  {
                    name = "model"
                  }
                },
                description = "Sets the distance attenuation model.",
                link = "https://love2d.org/wiki/love.audio.setDistanceModel",
                type = "function"
              },
              setDopplerScale = {
                args = {
                  {
                    name = "scale"
                  }
                },
                description = "Sets a global scale factor for velocity-based doppler effects. The default scale value is 1.",
                link = "https://love2d.org/wiki/love.audio.setDopplerScale",
                type = "function"
              },
              setOrientation = {
                args = {
                  {
                    name = "fx"
                  },
                  {
                    name = "fy"
                  },
                  {
                    name = "fz"
                  },
                  {
                    name = "ux"
                  },
                  {
                    name = "uy"
                  },
                  {
                    name = "uz"
                  }
                },
                description = "Sets the orientation of the listener.",
                link = "https://love2d.org/wiki/love.audio.setOrientation",
                type = "function"
              },
              setPosition = {
                args = {
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    name = "z"
                  }
                },
                description = "Sets the position of the listener, which determines how sounds play.",
                link = "https://love2d.org/wiki/love.audio.setPosition",
                type = "function"
              },
              setVelocity = {
                args = {
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    name = "z"
                  }
                },
                description = "Sets the velocity of the listener.",
                link = "https://love2d.org/wiki/love.audio.setVelocity",
                type = "function"
              },
              setVolume = {
                args = {
                  {
                    name = "volume"
                  }
                },
                description = "Sets the master volume.",
                link = "https://love2d.org/wiki/love.audio.setVolume",
                type = "function"
              },
              stop = {
                link = "https://love2d.org/wiki/love.audio.stop",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "This function will stop all currently active sources."
                  },
                  {
                    args = {
                      {
                        name = "source"
                      }
                    },
                    description = "This function will only stop the specified source."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.audio",
            type = "table"
          },
          conf = {
            args = {
              {
                name = "t"
              }
            },
            description = "If a file called conf.lua is present in your game folder (or .love file), it is run before the LÖVE modules are loaded. You can use this file to overwrite the love.conf function, which is later called by the LÖVE 'boot' script. Using the love.conf function, you can set some configuration options, and change things like the default size of the window, which modules are loaded, and other stuff.",
            link = "https://love2d.org/wiki/love.conf",
            type = "function"
          },
          directorydropped = {
            args = {
              {
                name = "path"
              }
            },
            description = "Callback function triggered when a directory is dragged and dropped onto the window.",
            link = "https://love2d.org/wiki/love.directorydropped",
            type = "function"
          },
          draw = {
            args = {},
            description = "Callback function used to draw on the screen every frame.",
            link = "https://love2d.org/wiki/love.draw",
            type = "function"
          },
          errhand = {
            args = {
              {
                name = "msg"
              }
            },
            description = "The error handler, used to display error messages.",
            link = "https://love2d.org/wiki/love.errhand",
            type = "function"
          },
          event = {
            description = "Manages events, like keypresses.",
            fields = {
              clear = {
                args = {},
                description = "Clears the event queue.",
                link = "https://love2d.org/wiki/love.event.clear",
                type = "function"
              },
              poll = {
                args = {},
                description = "Returns an iterator for messages in the event queue.",
                link = "https://love2d.org/wiki/love.event.poll",
                returnTypes = {
                  {
                    type = "function"
                  }
                },
                type = "function"
              },
              pump = {
                args = {},
                description = "Pump events into the event queue. This is a low-level function, and is usually not called by the user, but by love.run. Note that this does need to be called for any OS to think you're still running, and if you want to handle OS-generated events at all (think callbacks). love.event.pump can only be called from the main thread, but afterwards, the rest of love.event can be used from any other thread.",
                link = "https://love2d.org/wiki/love.event.pump",
                type = "function"
              },
              push = {
                args = {
                  {
                    name = "e"
                  },
                  {
                    displayName = "[a]",
                    name = "a"
                  },
                  {
                    displayName = "[b]",
                    name = "b"
                  },
                  {
                    displayName = "[c]",
                    name = "c"
                  },
                  {
                    displayName = "[d]",
                    name = "d"
                  }
                },
                description = "Adds an event to the event queue.",
                link = "https://love2d.org/wiki/love.event.push",
                type = "function"
              },
              quit = {
                link = "https://love2d.org/wiki/love.event.quit",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Adds the quit event to the queue.\n\nThe quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback."
                  },
                  {
                    args = {
                      {
                        displayName = "[exitstatus]",
                        name = "exitstatus"
                      }
                    },
                    description = "Adds the quit event to the queue.\n\nThe quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback."
                  },
                  {
                    args = {
                      {
                        name = "\"restart\""
                      }
                    },
                    description = "Adds the quit event to the queue.\n\nThe quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback."
                  }
                }
              },
              wait = {
                args = {},
                description = "Like love.event.poll but blocks until there is an event in the queue.",
                link = "https://love2d.org/wiki/love.event.wait",
                returnTypes = {
                  {
                    name = "Event",
                    type = "ref"
                  },
                  {
                    name = "Variant",
                    type = "ref"
                  },
                  {
                    name = "Variant",
                    type = "ref"
                  },
                  {
                    name = "Variant",
                    type = "ref"
                  },
                  {
                    name = "Variant",
                    type = "ref"
                  }
                },
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.event",
            type = "table"
          },
          filedropped = {
            args = {
              {
                name = "file"
              }
            },
            description = "Callback function triggered when a file is dragged and dropped onto the window.",
            link = "https://love2d.org/wiki/love.filedropped",
            type = "function"
          },
          filesystem = {
            description = "Provides an interface to the user's filesystem.",
            fields = {
              append = {
                args = {
                  {
                    name = "name"
                  },
                  {
                    name = "data"
                  },
                  {
                    displayName = "[size]",
                    name = "size"
                  }
                },
                description = "Append data to an existing file.",
                link = "https://love2d.org/wiki/love.filesystem.append",
                returnTypes = {
                  {
                    type = "boolean"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              areSymlinksEnabled = {
                args = {},
                description = "Gets whether love.filesystem follows symbolic links.",
                link = "https://love2d.org/wiki/love.filesystem.areSymlinksEnabled",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              createDirectory = {
                args = {
                  {
                    name = "name"
                  }
                },
                description = "Creates a directory.",
                link = "https://love2d.org/wiki/love.filesystem.createDirectory",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              exists = {
                args = {
                  {
                    name = "filename"
                  }
                },
                description = "Check whether a file or directory exists.",
                link = "https://love2d.org/wiki/love.filesystem.exists",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              getAppdataDirectory = {
                args = {},
                description = "Returns the application data directory (could be the same as getUserDirectory)",
                link = "https://love2d.org/wiki/love.filesystem.getAppdataDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getDirectoryItems = {
                args = {
                  {
                    name = "dir"
                  }
                },
                description = "Returns a table with the names of files and subdirectories in the specified path. The table is not sorted in any way; the order is undefined.\n\nIf the path passed to the function exists in the game and the save directory, it will list the files and directories from both places.",
                link = "https://love2d.org/wiki/love.filesystem.getDirectoryItems",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getIdentity = {
                args = {
                  {
                    name = "name"
                  }
                },
                description = "Gets the write directory name for your game. Note that this only returns the name of the folder to store your files in, not the full location.",
                link = "https://love2d.org/wiki/love.filesystem.getIdentity",
                type = "function"
              },
              getLastModified = {
                args = {
                  {
                    name = "filename"
                  }
                },
                description = "Gets the last modification time of a file.",
                link = "https://love2d.org/wiki/love.filesystem.getLastModified",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getRealDirectory = {
                args = {
                  {
                    name = "filepath"
                  }
                },
                description = "Gets the platform-specific absolute path of the directory containing a filepath.\n\nThis can be used to determine whether a file is inside the save directory or the game's source .love.",
                link = "https://love2d.org/wiki/love.filesystem.getRealDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getRequirePath = {
                args = {},
                description = "Gets the filesystem paths that will be searched when require is called.\n\nThe paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to require will be inserted in place of any question mark (\"?\") character in each template (after the dot characters in the argument passed to require are replaced by directory separators.)\n\nThe paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.",
                link = "https://love2d.org/wiki/love.filesystem.getRequirePath",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getSaveDirectory = {
                args = {},
                description = "Gets the full path to the designated save directory. This can be useful if you want to use the standard io library (or something else) to read or write in the save directory.",
                link = "https://love2d.org/wiki/love.filesystem.getSaveDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getSize = {
                args = {
                  {
                    name = "filename"
                  }
                },
                description = "Gets the size in bytes of a file.",
                link = "https://love2d.org/wiki/love.filesystem.getSize",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getSource = {
                args = {},
                description = "Returns the full path to the the .love file or directory. If the game is fused to the LÖVE executable, then the executable is returned.",
                link = "https://love2d.org/wiki/love.filesystem.getSource",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getSourceBaseDirectory = {
                args = {},
                description = "Returns the full path to the directory containing the .love file. If the game is fused to the LÖVE executable, then the directory containing the executable is returned.\n\nIf love.filesystem.isFused is true, the path returned by this function can be passed to love.filesystem.mount, which will make the directory containing the main game readable by love.filesystem.",
                link = "https://love2d.org/wiki/love.filesystem.getSourceBaseDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getUserDirectory = {
                args = {},
                description = "Returns the path of the user's directory.",
                link = "https://love2d.org/wiki/love.filesystem.getUserDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getWorkingDirectory = {
                args = {},
                description = "Gets the current working directory.",
                link = "https://love2d.org/wiki/love.filesystem.getWorkingDirectory",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              init = {
                args = {
                  {
                    name = "appname"
                  }
                },
                description = "Initializes love.filesystem, will be called internally, so should not be used explicitly.",
                link = "https://love2d.org/wiki/love.filesystem.init",
                type = "function"
              },
              isDirectory = {
                args = {
                  {
                    name = "path"
                  }
                },
                description = "Check whether something is a directory.",
                link = "https://love2d.org/wiki/love.filesystem.isDirectory",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isFile = {
                args = {
                  {
                    name = "path"
                  }
                },
                description = "Check whether something is a file.",
                link = "https://love2d.org/wiki/love.filesystem.isFile",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isFused = {
                args = {},
                description = "Gets whether the game is in fused mode or not.\n\nIf a game is in fused mode, its save directory will be directly in the Appdata directory instead of Appdata/LOVE/. The game will also be able to load C Lua dynamic libraries which are located in the save directory.\n\nA game is in fused mode if the source .love has been fused to the executable (see Game Distribution), or if \"--fused\" has been given as a command-line argument when starting the game.",
                link = "https://love2d.org/wiki/love.filesystem.isFused",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isSymlink = {
                args = {
                  {
                    name = "path"
                  }
                },
                description = "Gets whether a filepath is actually a symbolic link.\n\nIf symbolic links are not enabled (via love.filesystem.setSymlinksEnabled), this function will always return false.",
                link = "https://love2d.org/wiki/love.filesystem.isSymlink",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              lines = {
                args = {
                  {
                    name = "name"
                  }
                },
                description = "Iterate over the lines in a file.",
                link = "https://love2d.org/wiki/love.filesystem.lines",
                returnTypes = {
                  {
                    type = "function"
                  }
                },
                type = "function"
              },
              load = {
                args = {
                  {
                    name = "name"
                  },
                  {
                    displayName = "[errormsg]",
                    name = "errormsg"
                  }
                },
                description = "Loads a Lua file (but does not run it).",
                link = "https://love2d.org/wiki/love.filesystem.load",
                returnTypes = {
                  {
                    type = "function"
                  }
                },
                type = "function"
              },
              mount = {
                link = "https://love2d.org/wiki/love.filesystem.mount",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "archive"
                      },
                      {
                        name = "mountpoint"
                      }
                    },
                    description = "Mounts a zip file or folder in the game's save directory for reading."
                  },
                  {
                    args = {
                      {
                        name = "archive"
                      },
                      {
                        name = "mountpoint"
                      },
                      {
                        displayName = "[appendToPath]",
                        name = "appendToPath"
                      }
                    },
                    description = "Mounts a zip file or folder in the game's save directory for reading."
                  }
                }
              },
              newFile = {
                args = {
                  {
                    name = "filename"
                  },
                  {
                    displayName = "[mode]",
                    name = "mode"
                  }
                },
                description = "Creates a new File object. It needs to be opened before it can be accessed.",
                link = "https://love2d.org/wiki/love.filesystem.newFile",
                returnTypes = {
                  {
                    name = "File",
                    type = "ref"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              newFileData = {
                link = "https://love2d.org/wiki/love.filesystem.newFileData",
                returnTypes = {
                  {
                    name = "FileData",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "contents"
                      },
                      {
                        name = "name"
                      },
                      {
                        displayName = "[decoder]",
                        name = "decoder"
                      }
                    },
                    description = "Creates a new FileData object."
                  },
                  {
                    args = {
                      {
                        name = "filepath"
                      }
                    },
                    description = "Creates a new FileData from a file on the storage device."
                  }
                }
              },
              read = {
                args = {
                  {
                    name = "name"
                  },
                  {
                    displayName = "[bytes]",
                    name = "bytes"
                  }
                },
                description = "Read the contents of a file.",
                link = "https://love2d.org/wiki/love.filesystem.read",
                returnTypes = {
                  {
                    type = "string"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              remove = {
                args = {
                  {
                    name = "name"
                  }
                },
                description = "Removes a file or directory.",
                link = "https://love2d.org/wiki/love.filesystem.remove",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              setIdentity = {
                args = {
                  {
                    name = "name"
                  },
                  {
                    displayName = "[appendToPath]",
                    name = "appendToPath"
                  }
                },
                description = "Sets the write directory for your game. Note that you can only set the name of the folder to store your files in, not the location.",
                link = "https://love2d.org/wiki/love.filesystem.setIdentity",
                type = "function"
              },
              setRequirePath = {
                args = {
                  {
                    name = "paths"
                  }
                },
                description = "Sets the filesystem paths that will be searched when require is called.\n\nThe paths string given to this function is a sequence of path templates separated by semicolons. The argument passed to require will be inserted in place of any question mark (\"?\") character in each template (after the dot characters in the argument passed to require are replaced by directory separators.)\n\nThe paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.",
                link = "https://love2d.org/wiki/love.filesystem.setRequirePath",
                type = "function"
              },
              setSource = {
                args = {
                  {
                    name = "path"
                  }
                },
                description = "Sets the source of the game, where the code is present. This function can only be called once, and is normally automatically done by LÖVE.",
                link = "https://love2d.org/wiki/love.filesystem.setSource",
                type = "function"
              },
              setSymlinksEnabled = {
                args = {
                  {
                    name = "enable"
                  }
                },
                description = "Sets whether love.filesystem follows symbolic links. It is enabled by default in version 0.10.0 and newer, and disabled by default in 0.9.2.",
                link = "https://love2d.org/wiki/love.filesystem.setSymlinksEnabled",
                type = "function"
              },
              unmount = {
                args = {
                  {
                    name = "archive"
                  }
                },
                description = "Unmounts a zip file or folder previously mounted for reading with love.filesystem.mount.",
                link = "https://love2d.org/wiki/love.filesystem.unmount",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              write = {
                link = "https://love2d.org/wiki/love.filesystem.write",
                returnTypes = {
                  {
                    type = "boolean"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "name"
                      },
                      {
                        name = "data"
                      },
                      {
                        displayName = "[size]",
                        name = "size"
                      }
                    },
                    description = "Write data to a file.\n\nIf you are getting the error message \"Could not set write directory\", try setting the save directory. This is done either with love.filesystem.setIdentity or by setting the identity field in love.conf."
                  },
                  {
                    args = {
                      {
                        name = "name"
                      },
                      {
                        name = "data"
                      },
                      {
                        displayName = "[size]",
                        name = "size"
                      }
                    },
                    description = "Write data to a file.\n\nIf you are getting the error message \"Could not set write directory\", try setting the save directory. This is done either with love.filesystem.setIdentity or by setting the identity field in love.conf."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.filesystem",
            type = "table"
          },
          focus = {
            args = {
              {
                name = "focus"
              }
            },
            description = "Callback function triggered when window receives or loses focus.",
            link = "https://love2d.org/wiki/love.focus",
            type = "function"
          },
          gamepadaxis = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "axis"
              }
            },
            description = "Called when a Joystick's virtual gamepad axis is moved.",
            link = "https://love2d.org/wiki/love.gamepadaxis",
            type = "function"
          },
          gamepadpressed = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "button"
              }
            },
            description = "Called when a Joystick's virtual gamepad button is pressed.",
            link = "https://love2d.org/wiki/love.gamepadpressed",
            type = "function"
          },
          gamepadreleased = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "button"
              }
            },
            description = "Called when a Joystick's virtual gamepad button is released.",
            link = "https://love2d.org/wiki/love.gamepadreleased",
            type = "function"
          },
          getVersion = {
            args = {},
            description = "Gets the current running version of LÖVE.",
            link = "https://love2d.org/wiki/love.getVersion",
            returnTypes = {
              {
                type = "number"
              },
              {
                type = "number"
              },
              {
                type = "number"
              },
              {
                type = "string"
              }
            },
            type = "function"
          },
          graphics = {
            description = "The primary responsibility for the love.graphics module is the drawing of lines, shapes, text, Images and other Drawable objects onto the screen. Its secondary responsibilities include loading external files (including Images and Fonts) into memory, creating specialized objects (such as ParticleSystems or Canvases) and managing screen geometry.\n\nLÖVE's coordinate system is rooted in the upper-left corner of the screen, which is at location (0, 0). The x axis is horizontal: larger values are further to the right. The y axis is vertical: larger values are further towards the bottom.\n\nIn many cases, you draw images or shapes in terms of their upper-left corner.\n\nMany of the functions are used to manipulate the graphics coordinate system, which is essentially the way coordinates are mapped to the display. You can change the position, scale, and even rotation in this way.",
            fields = {
              arc = {
                link = "https://love2d.org/wiki/love.graphics.arc",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "drawmode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radius"
                      },
                      {
                        name = "angle1"
                      },
                      {
                        name = "angle2"
                      },
                      {
                        displayName = "[segments]",
                        name = "segments"
                      }
                    },
                    description = "Draws an arc using the \"pie\" ArcType."
                  },
                  {
                    args = {
                      {
                        name = "drawmode"
                      },
                      {
                        name = "arctype"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radius"
                      },
                      {
                        name = "angle1"
                      },
                      {
                        name = "angle2"
                      },
                      {
                        displayName = "[segments]",
                        name = "segments"
                      }
                    },
                    description = "Draws a filled or unfilled arc at position (x, y). The arc is drawn from angle1 to angle2 in radians. The segments parameter determines how many segments are used to draw the arc. The more segments, the smoother the edge."
                  }
                }
              },
              circle = {
                link = "https://love2d.org/wiki/love.graphics.circle",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radius"
                      }
                    },
                    description = "Draws a circle."
                  },
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radius"
                      },
                      {
                        name = "segments"
                      }
                    },
                    description = "Draws a circle."
                  }
                }
              },
              clear = {
                link = "https://love2d.org/wiki/love.graphics.clear",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Clears the screen to the background color in 0.9.2 and earlier, or to transparent black (0, 0, 0, 0) in LÖVE 0.10.0 and newer."
                  },
                  {
                    args = {
                      {
                        name = "r"
                      },
                      {
                        name = "g"
                      },
                      {
                        name = "b"
                      },
                      {
                        displayName = "[a]",
                        name = "a"
                      }
                    },
                    description = "Clears the screen or active Canvas to the specified color."
                  },
                  {
                    args = {
                      {
                        name = "color"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Clears multiple active Canvases to different colors, if multiple Canvases are active at once via love.graphics.setCanvas."
                  }
                }
              },
              discard = {
                link = "https://love2d.org/wiki/love.graphics.discard",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        displayName = "[discardcolor]",
                        name = "discardcolor"
                      },
                      {
                        displayName = "[discardstencil]",
                        name = "discardstencil"
                      }
                    },
                    description = "Discards (trashes) the contents of the screen or active Canvas. This is a performance optimization function with niche use cases.\n\nIf the active Canvas has just been changed and the \"replace\" BlendMode is about to be used to draw something which covers the entire screen, calling love.graphics.discard rather than calling love.graphics.clear or doing nothing may improve performance on mobile devices.\n\nOn some desktop systems this function may do nothing."
                  },
                  {
                    args = {
                      {
                        name = "discardcolors"
                      },
                      {
                        displayName = "[discardstencil]",
                        name = "discardstencil"
                      }
                    },
                    description = "Discards (trashes) the contents of the screen or active Canvas. This is a performance optimization function with niche use cases.\n\nIf the active Canvas has just been changed and the \"replace\" BlendMode is about to be used to draw something which covers the entire screen, calling love.graphics.discard rather than calling love.graphics.clear or doing nothing may improve performance on mobile devices.\n\nOn some desktop systems this function may do nothing."
                  }
                }
              },
              draw = {
                link = "https://love2d.org/wiki/love.graphics.draw",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "drawable"
                      },
                      {
                        displayName = "[x]",
                        name = "x"
                      },
                      {
                        displayName = "[y]",
                        name = "y"
                      },
                      {
                        displayName = "[r]",
                        name = "r"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws a Drawable object (an Image, Canvas, SpriteBatch, ParticleSystem, Mesh, or Video) on the screen with optional rotation, scaling and shearing.\n\nObjects are drawn relative to their local coordinate system. The origin is by default located at the top left corner of Image and Canvas. All scaling, shearing, and rotation arguments transform the object relative to that point. Also, the position of the origin can be specified on the screen coordinate system.\n\nIt's possible to rotate an object about its center by offsetting the origin to the center. Angles must be given in radians for rotation. One can also use a negative scaling factor to flip about its centerline.\n\nNote that the offsets are applied before rotation, scaling, or shearing; scaling and shearing are applied before rotation.\n\nThe right and bottom edges of the object are shifted at an angle defined by the shearing factors."
                  },
                  {
                    args = {
                      {
                        name = "texture"
                      },
                      {
                        name = "quad"
                      },
                      {
                        displayName = "[x]",
                        name = "x"
                      },
                      {
                        displayName = "[y]",
                        name = "y"
                      },
                      {
                        displayName = "[r]",
                        name = "r"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws a Drawable object (an Image, Canvas, SpriteBatch, ParticleSystem, Mesh, or Video) on the screen with optional rotation, scaling and shearing.\n\nObjects are drawn relative to their local coordinate system. The origin is by default located at the top left corner of Image and Canvas. All scaling, shearing, and rotation arguments transform the object relative to that point. Also, the position of the origin can be specified on the screen coordinate system.\n\nIt's possible to rotate an object about its center by offsetting the origin to the center. Angles must be given in radians for rotation. One can also use a negative scaling factor to flip about its centerline.\n\nNote that the offsets are applied before rotation, scaling, or shearing; scaling and shearing are applied before rotation.\n\nThe right and bottom edges of the object are shifted at an angle defined by the shearing factors."
                  }
                }
              },
              ellipse = {
                link = "https://love2d.org/wiki/love.graphics.ellipse",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radiusx"
                      },
                      {
                        name = "radiusy"
                      }
                    },
                    description = "Draws an ellipse."
                  },
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radiusx"
                      },
                      {
                        name = "radiusy"
                      },
                      {
                        name = "segments"
                      }
                    },
                    description = "Draws an ellipse."
                  }
                }
              },
              getBackgroundColor = {
                args = {},
                description = "Gets the current background color.",
                link = "https://love2d.org/wiki/love.graphics.getBackgroundColor",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getBlendMode = {
                args = {},
                description = "Gets the blending mode.",
                link = "https://love2d.org/wiki/love.graphics.getBlendMode",
                returnTypes = {
                  {
                    name = "BlendMode",
                    type = "ref"
                  },
                  {
                    name = "BlendAlphaMode",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getCanvas = {
                args = {},
                description = "Gets the current target Canvas.",
                link = "https://love2d.org/wiki/love.graphics.getCanvas",
                returnTypes = {
                  {
                    name = "Canvas",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getCanvasFormats = {
                args = {},
                description = "Gets the available Canvas formats, and whether each is supported.",
                link = "https://love2d.org/wiki/love.graphics.getCanvasFormats",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getColor = {
                args = {},
                description = "Gets the current color.",
                link = "https://love2d.org/wiki/love.graphics.getColor",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getColorMask = {
                args = {},
                description = "Gets the active color components used when drawing. Normally all 4 components are active unless love.graphics.setColorMask has been used.\n\nThe color mask determines whether individual components of the colors of drawn objects will affect the color of the screen. They affect love.graphics.clear and Canvas:clear as well.",
                link = "https://love2d.org/wiki/love.graphics.getColorMask",
                returnTypes = {
                  {
                    type = "boolean"
                  },
                  {
                    type = "boolean"
                  },
                  {
                    type = "boolean"
                  },
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              getCompressedImageFormats = {
                args = {},
                description = "Gets the available compressed image formats, and whether each is supported.",
                link = "https://love2d.org/wiki/love.graphics.getCompressedImageFormats",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getDefaultFilter = {
                args = {},
                description = "Returns the default scaling filters used with Images, Canvases, and Fonts.",
                link = "https://love2d.org/wiki/love.graphics.getDefaultFilter",
                returnTypes = {
                  {
                    name = "FilterMode",
                    type = "ref"
                  },
                  {
                    name = "FilterMode",
                    type = "ref"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getDimensions = {
                args = {},
                description = "Gets the width and height of the window.",
                link = "https://love2d.org/wiki/love.graphics.getDimensions",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getFont = {
                args = {},
                description = "Gets the current Font object.",
                link = "https://love2d.org/wiki/love.graphics.getFont",
                returnTypes = {
                  {
                    name = "Font",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getHeight = {
                args = {},
                description = "Gets the height of the window.",
                link = "https://love2d.org/wiki/love.graphics.getHeight",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getLineJoin = {
                args = {},
                description = "Gets the line join style.",
                link = "https://love2d.org/wiki/love.graphics.getLineJoin",
                returnTypes = {
                  {
                    name = "LineJoin",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getLineStyle = {
                args = {},
                description = "Gets the line style.",
                link = "https://love2d.org/wiki/love.graphics.getLineStyle",
                returnTypes = {
                  {
                    name = "LineStyle",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getLineWidth = {
                args = {},
                description = "Gets the current line width.",
                link = "https://love2d.org/wiki/love.graphics.getLineWidth",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getPointSize = {
                args = {},
                description = "Gets the point size.",
                link = "https://love2d.org/wiki/love.graphics.getPointSize",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getRendererInfo = {
                args = {},
                description = "Gets information about the system's video card and drivers.",
                link = "https://love2d.org/wiki/love.graphics.getRendererInfo",
                returnTypes = {
                  {
                    type = "string"
                  },
                  {
                    type = "string"
                  },
                  {
                    type = "string"
                  },
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getScissor = {
                args = {},
                description = "Gets the current scissor box.",
                link = "https://love2d.org/wiki/love.graphics.getScissor",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getShader = {
                args = {},
                description = "Returns the current Shader. Returns nil if none is set.",
                link = "https://love2d.org/wiki/love.graphics.getShader",
                returnTypes = {
                  {
                    name = "Shader",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getStats = {
                args = {},
                description = "Gets performance-related rendering statistics.",
                link = "https://love2d.org/wiki/love.graphics.getStats",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getStencilTest = {
                args = {},
                description = "Gets whether stencil testing is enabled.\n\nWhen stencil testing is enabled, the geometry of everything that is drawn will be clipped / stencilled out based on whether it intersects with what has been previously drawn to the stencil buffer.\n\nEach Canvas has its own stencil buffer.",
                link = "https://love2d.org/wiki/love.graphics.getStencilTest",
                returnTypes = {
                  {
                    type = "boolean"
                  },
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              getSupported = {
                args = {},
                description = "Gets the optional graphics features and whether they're supported on the system.\n\nSome older or low-end systems don't always support all graphics features.",
                link = "https://love2d.org/wiki/love.graphics.getSupported",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getSystemLimits = {
                args = {},
                description = "Gets the system-dependent maximum values for love.graphics features.",
                link = "https://love2d.org/wiki/love.graphics.getSystemLimits",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getWidth = {
                args = {},
                description = "Gets the width of the window.",
                link = "https://love2d.org/wiki/love.graphics.getWidth",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              intersectScissor = {
                link = "https://love2d.org/wiki/love.graphics.intersectScissor",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      }
                    },
                    description = "Limits the drawing area to a specified rectangle."
                  },
                  {
                    args = {},
                    description = "Disables scissor."
                  }
                }
              },
              isGammaCorrect = {
                args = {},
                description = "Gets whether gamma-correct rendering is supported and enabled. It can be enabled by setting t.gammacorrect = true in love.conf.\n\nNot all devices support gamma-correct rendering, in which case it will be automatically disabled and this function will return false. It is supported on desktop systems which have graphics cards that are capable of using OpenGL 3 / DirectX 10, and iOS devices that can use OpenGL ES 3.",
                link = "https://love2d.org/wiki/love.graphics.isGammaCorrect",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isWireframe = {
                args = {},
                description = "Gets whether wireframe mode is used when drawing.",
                link = "https://love2d.org/wiki/love.graphics.isWireframe",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              line = {
                link = "https://love2d.org/wiki/love.graphics.line",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Draws lines between points."
                  },
                  {
                    args = {
                      {
                        name = "points"
                      }
                    },
                    description = "Draws lines between points."
                  }
                }
              },
              newCanvas = {
                args = {
                  {
                    displayName = "[width]",
                    name = "width"
                  },
                  {
                    displayName = "[height]",
                    name = "height"
                  },
                  {
                    displayName = "[format]",
                    name = "format"
                  },
                  {
                    displayName = "[msaa]",
                    name = "msaa"
                  }
                },
                description = "Creates a new Canvas object for offscreen rendering.\n\nAntialiased Canvases have slightly higher system requirements than normal Canvases. Additionally, the supported maximum number of MSAA samples varies depending on the system. Use love.graphics.getSystemLimit to check.\n\nIf the number of MSAA samples specified is greater than the maximum supported by the system, the Canvas will still be created but only using the maximum supported amount (this includes 0.)",
                link = "https://love2d.org/wiki/love.graphics.newCanvas",
                returnTypes = {
                  {
                    name = "Canvas",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newFont = {
                link = "https://love2d.org/wiki/love.graphics.newFont",
                returnTypes = {
                  {
                    name = "Font",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Create a new BMFont or TrueType font."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        name = "size"
                      }
                    },
                    description = "Create a new TrueType font."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        name = "imagefilename"
                      }
                    },
                    description = "Create a new BMFont."
                  },
                  {
                    args = {
                      {
                        name = "size"
                      }
                    },
                    description = "Create a new instance of the default font (Vera Sans) with a custom size."
                  }
                }
              },
              newImage = {
                link = "https://love2d.org/wiki/love.graphics.newImage",
                returnTypes = {
                  {
                    name = "Image",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Creates a new Image from a filepath, FileData, an ImageData, or a CompressedImageData, and optionally generates or specifies mipmaps for the image."
                  },
                  {
                    args = {
                      {
                        name = "imageData"
                      }
                    },
                    description = "Creates a new Image from a filepath, FileData, an ImageData, or a CompressedImageData, and optionally generates or specifies mipmaps for the image."
                  },
                  {
                    args = {
                      {
                        name = "compressedImageData"
                      }
                    },
                    description = "Creates a new Image from a filepath, FileData, an ImageData, or a CompressedImageData, and optionally generates or specifies mipmaps for the image."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        name = "flags"
                      }
                    },
                    description = "Creates a new Image from a filepath, FileData, an ImageData, or a CompressedImageData, and optionally generates or specifies mipmaps for the image."
                  }
                }
              },
              newImageFont = {
                link = "https://love2d.org/wiki/love.graphics.newImageFont",
                returnTypes = {
                  {
                    name = "Font",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        name = "glyphs"
                      }
                    },
                    description = "Creates a new Font by loading a specifically formatted image.\n\nIn versions prior to 0.9.0, LÖVE expects ISO 8859-1 encoding for the glyphs string."
                  },
                  {
                    args = {
                      {
                        name = "imageData"
                      },
                      {
                        name = "glyphs"
                      }
                    },
                    description = "Creates a new Font by loading a specifically formatted image.\n\nIn versions prior to 0.9.0, LÖVE expects ISO 8859-1 encoding for the glyphs string."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        name = "glyphs"
                      },
                      {
                        displayName = "[extraspacing]",
                        name = "extraspacing"
                      }
                    },
                    description = "Creates a new Font by loading a specifically formatted image.\n\nIn versions prior to 0.9.0, LÖVE expects ISO 8859-1 encoding for the glyphs string."
                  }
                }
              },
              newMesh = {
                link = "https://love2d.org/wiki/love.graphics.newMesh",
                returnTypes = {
                  {
                    name = "Mesh",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "vertices"
                      },
                      {
                        displayName = "[mode]",
                        name = "mode"
                      },
                      {
                        displayName = "[usage]",
                        name = "usage"
                      }
                    },
                    description = "Creates a standard Mesh with the specified vertices."
                  },
                  {
                    args = {
                      {
                        name = "vertexcount"
                      },
                      {
                        displayName = "[mode]",
                        name = "mode"
                      },
                      {
                        displayName = "[usage]",
                        name = "usage"
                      }
                    },
                    description = "Creates a standard Mesh with the specified number of vertices."
                  },
                  {
                    args = {
                      {
                        name = "vertexformat"
                      },
                      {
                        name = "vertices"
                      },
                      {
                        displayName = "[mode]",
                        name = "mode"
                      },
                      {
                        displayName = "[usage]",
                        name = "usage"
                      }
                    },
                    description = "Creates a Mesh with custom vertex attributes and the specified vertex data."
                  },
                  {
                    args = {
                      {
                        name = "vertexformat"
                      },
                      {
                        name = "vertexcount"
                      },
                      {
                        displayName = "[mode]",
                        name = "mode"
                      },
                      {
                        displayName = "[usage]",
                        name = "usage"
                      }
                    },
                    description = "Creates a Mesh with custom vertex attributes and the specified number of vertices."
                  }
                }
              },
              newParticleSystem = {
                args = {
                  {
                    name = "texture"
                  },
                  {
                    displayName = "[buffer]",
                    name = "buffer"
                  }
                },
                description = "Creates a new ParticleSystem.",
                link = "https://love2d.org/wiki/love.graphics.newParticleSystem",
                returnTypes = {
                  {
                    name = "ParticleSystem",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newQuad = {
                args = {
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    name = "width"
                  },
                  {
                    name = "height"
                  },
                  {
                    name = "sw"
                  },
                  {
                    name = "sh"
                  }
                },
                description = "Creates a new Quad.\n\nThe purpose of a Quad is to describe the result of the following transformation on any drawable object. The object is first scaled to dimensions sw * sh. The Quad then describes the rectangular area of dimensions width * height whose upper left corner is at position (x, y) inside the scaled object.",
                link = "https://love2d.org/wiki/love.graphics.newQuad",
                returnTypes = {
                  {
                    name = "Quad",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newScreenshot = {
                args = {
                  {
                    displayName = "[copyAlpha]",
                    name = "copyAlpha"
                  }
                },
                description = "Creates a screenshot and returns the image data.",
                link = "https://love2d.org/wiki/love.graphics.newScreenshot",
                returnTypes = {
                  {
                    name = "ImageData",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newShader = {
                link = "https://love2d.org/wiki/love.graphics.newShader",
                returnTypes = {
                  {
                    name = "Shader",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "code"
                      }
                    },
                    description = "Creates a new Shader object for hardware-accelerated vertex and pixel effects. A Shader contains either vertex shader code, pixel shader code, or both.\n\nVertex shader code must contain at least one function, named position, which is the function that will produce transformed vertex positions of drawn objects in screen-space.\n\nPixel shader code must contain at least one function, named effect, which is the function that will produce the color which is blended onto the screen for each pixel a drawn object touches."
                  },
                  {
                    args = {
                      {
                        name = "pixelcode"
                      },
                      {
                        name = "vertexcode"
                      }
                    },
                    description = "Creates a new Shader object for hardware-accelerated vertex and pixel effects. A Shader contains either vertex shader code, pixel shader code, or both.\n\nVertex shader code must contain at least one function, named position, which is the function that will produce transformed vertex positions of drawn objects in screen-space.\n\nPixel shader code must contain at least one function, named effect, which is the function that will produce the color which is blended onto the screen for each pixel a drawn object touches."
                  }
                }
              },
              newSpriteBatch = {
                args = {
                  {
                    name = "texture"
                  },
                  {
                    displayName = "[maxsprites]",
                    name = "maxsprites"
                  },
                  {
                    displayName = "[usage]",
                    name = "usage"
                  }
                },
                description = "Creates a new SpriteBatch object.",
                link = "https://love2d.org/wiki/love.graphics.newSpriteBatch",
                returnTypes = {
                  {
                    name = "SpriteBatch",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newText = {
                args = {
                  {
                    name = "font"
                  },
                  {
                    displayName = "[textstring]",
                    name = "textstring"
                  }
                },
                description = "Creates a new drawable Text object.",
                link = "https://love2d.org/wiki/love.graphics.newText",
                returnTypes = {
                  {
                    name = "Text",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newVideo = {
                link = "https://love2d.org/wiki/love.graphics.newVideo",
                returnTypes = {
                  {
                    name = "Video",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        displayName = "[loadaudio]",
                        name = "loadaudio"
                      }
                    },
                    description = "Creates a new drawable Video. Currently only Ogg Theora video files are supported."
                  },
                  {
                    args = {
                      {
                        name = "videostream"
                      },
                      {
                        displayName = "[loadaudio]",
                        name = "loadaudio"
                      }
                    },
                    description = "Creates a new drawable Video. Currently only Ogg Theora video files are supported."
                  }
                }
              },
              origin = {
                args = {},
                description = "Resets the current coordinate transformation.\n\nThis function is always used to reverse any previous calls to love.graphics.rotate, love.graphics.scale, love.graphics.shear or love.graphics.translate. It returns the current transformation state to its defaults.",
                link = "https://love2d.org/wiki/love.graphics.origin",
                type = "function"
              },
              points = {
                link = "https://love2d.org/wiki/love.graphics.points",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Draws one or more points."
                  },
                  {
                    args = {
                      {
                        name = "points"
                      }
                    },
                    description = "Draws one or more points."
                  },
                  {
                    args = {
                      {
                        name = "points"
                      }
                    },
                    description = "Draws one or more points."
                  }
                }
              },
              polygon = {
                link = "https://love2d.org/wiki/love.graphics.polygon",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Draw a polygon.\n\nFollowing the mode argument, this function can accept multiple numeric arguments or a single table of numeric arguments. In either case the arguments are interpreted as alternating x and y coordinates of the polygon's vertices.\n\nWhen in fill mode, the polygon must be convex and simple or rendering artifacts may occur."
                  },
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "vertices"
                      }
                    },
                    description = "Draw a polygon.\n\nFollowing the mode argument, this function can accept multiple numeric arguments or a single table of numeric arguments. In either case the arguments are interpreted as alternating x and y coordinates of the polygon's vertices.\n\nWhen in fill mode, the polygon must be convex and simple or rendering artifacts may occur."
                  }
                }
              },
              pop = {
                args = {},
                description = "Pops the current coordinate transformation from the transformation stack.\n\nThis function is always used to reverse a previous push operation. It returns the current transformation state to what it was before the last preceding push. For an example, see the description of love.graphics.push.",
                link = "https://love2d.org/wiki/love.graphics.pop",
                type = "function"
              },
              present = {
                args = {},
                description = "Displays the results of drawing operations on the screen.\n\nThis function is used when writing your own love.run function. It presents all the results of your drawing operations on the screen. See the example in love.run for a typical use of this function.",
                link = "https://love2d.org/wiki/love.graphics.present",
                type = "function"
              },
              print = {
                link = "https://love2d.org/wiki/love.graphics.print",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "text"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        displayName = "[r]",
                        name = "r"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws text on screen. If no Font is set, one will be created and set (once) if needed.\n\nAs of LOVE 0.7.1, when using translation and scaling functions while drawing text, this function assumes the scale occurs first. If you don't script with this in mind, the text won't be in the right position, or possibly even on screen.\n\nlove.graphics.print and love.graphics.printf both suppport UTF-8 encoding. You'll also need a proper Font for special characters."
                  },
                  {
                    args = {
                      {
                        name = "coloredtext"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        displayName = "[angle]",
                        name = "angle"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws text on screen. If no Font is set, one will be created and set (once) if needed.\n\nAs of LOVE 0.7.1, when using translation and scaling functions while drawing text, this function assumes the scale occurs first. If you don't script with this in mind, the text won't be in the right position, or possibly even on screen.\n\nlove.graphics.print and love.graphics.printf both suppport UTF-8 encoding. You'll also need a proper Font for special characters."
                  }
                }
              },
              printf = {
                link = "https://love2d.org/wiki/love.graphics.printf",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "text"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "limit"
                      },
                      {
                        displayName = "[align]",
                        name = "align"
                      },
                      {
                        displayName = "[r]",
                        name = "r"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws formatted text, with word wrap and alignment.\n\nSee additional notes in love.graphics.print.\n\nIn version 0.9.2 and earlier, wrapping was implemented by breaking up words by spaces and putting them back together to make sure things fit nicely within the limit provided. However, due to the way this is done, extra spaces between words would end up missing when printed on the screen, and some lines could overflow past the provided wrap limit. In version 0.10.0 and newer this is no longer the case."
                  },
                  {
                    args = {
                      {
                        name = "coloredtext"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "wraplimit"
                      },
                      {
                        name = "align"
                      },
                      {
                        displayName = "[angle]",
                        name = "angle"
                      },
                      {
                        displayName = "[sx]",
                        name = "sx"
                      },
                      {
                        displayName = "[sy]",
                        name = "sy"
                      },
                      {
                        displayName = "[ox]",
                        name = "ox"
                      },
                      {
                        displayName = "[oy]",
                        name = "oy"
                      },
                      {
                        displayName = "[kx]",
                        name = "kx"
                      },
                      {
                        displayName = "[ky]",
                        name = "ky"
                      }
                    },
                    description = "Draws formatted text, with word wrap and alignment.\n\nSee additional notes in love.graphics.print.\n\nIn version 0.9.2 and earlier, wrapping was implemented by breaking up words by spaces and putting them back together to make sure things fit nicely within the limit provided. However, due to the way this is done, extra spaces between words would end up missing when printed on the screen, and some lines could overflow past the provided wrap limit. In version 0.10.0 and newer this is no longer the case."
                  }
                }
              },
              push = {
                args = {
                  {
                    displayName = "[stack]",
                    name = "stack"
                  }
                },
                description = "Copies and pushes the current coordinate transformation to the transformation stack.\n\nThis function is always used to prepare for a corresponding pop operation later. It stores the current coordinate transformation state into the transformation stack and keeps it active. Later changes to the transformation can be undone by using the pop operation, which returns the coordinate transform to the state it was in before calling push.",
                link = "https://love2d.org/wiki/love.graphics.push",
                type = "function"
              },
              rectangle = {
                link = "https://love2d.org/wiki/love.graphics.rectangle",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      }
                    },
                    description = "Draws a rectangle."
                  },
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      },
                      {
                        name = "rx"
                      },
                      {
                        displayName = "[ry]",
                        name = "ry"
                      },
                      {
                        displayName = "[segments]",
                        name = "segments"
                      }
                    },
                    description = "Draws a rectangle with rounded corners."
                  }
                }
              },
              reset = {
                args = {},
                description = "Resets the current graphics settings.\n\nCalling reset makes the current drawing color white, the current background color black, resets any active Canvas or Shader, and removes any scissor settings. It sets the BlendMode to alpha. It also sets both the point and line drawing modes to smooth and their sizes to 1.0.",
                link = "https://love2d.org/wiki/love.graphics.reset",
                type = "function"
              },
              rotate = {
                args = {
                  {
                    name = "angle"
                  }
                },
                description = "Rotates the coordinate system in two dimensions.\n\nCalling this function affects all future drawing operations by rotating the coordinate system around the origin by the given amount of radians. This change lasts until love.draw exits.",
                link = "https://love2d.org/wiki/love.graphics.rotate",
                type = "function"
              },
              scale = {
                args = {
                  {
                    name = "sx"
                  },
                  {
                    displayName = "[sy]",
                    name = "sy"
                  }
                },
                description = "Scales the coordinate system in two dimensions.\n\nBy default the coordinate system in LÖVE corresponds to the display pixels in horizontal and vertical directions one-to-one, and the x-axis increases towards the right while the y-axis increases downwards. Scaling the coordinate system changes this relation.\n\nAfter scaling by sx and sy, all coordinates are treated as if they were multiplied by sx and sy. Every result of a drawing operation is also correspondingly scaled, so scaling by (2, 2) for example would mean making everything twice as large in both x- and y-directions. Scaling by a negative value flips the coordinate system in the corresponding direction, which also means everything will be drawn flipped or upside down, or both. Scaling by zero is not a useful operation.\n\nScale and translate are not commutative operations, therefore, calling them in different orders will change the outcome.\n\nScaling lasts until love.draw exits.",
                link = "https://love2d.org/wiki/love.graphics.scale",
                type = "function"
              },
              setBackgroundColor = {
                link = "https://love2d.org/wiki/love.graphics.setBackgroundColor",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "r"
                      },
                      {
                        name = "g"
                      },
                      {
                        name = "b"
                      },
                      {
                        displayName = "[a]",
                        name = "a"
                      }
                    },
                    description = "Sets the background color."
                  },
                  {
                    args = {
                      {
                        name = "rgba"
                      }
                    },
                    description = "Sets the background color."
                  }
                }
              },
              setBlendMode = {
                link = "https://love2d.org/wiki/love.graphics.setBlendMode",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "mode"
                      }
                    },
                    description = "Sets the blending mode."
                  },
                  {
                    args = {
                      {
                        name = "mode"
                      },
                      {
                        displayName = "[alphamode]",
                        name = "alphamode"
                      }
                    },
                    description = "Sets the blending mode."
                  }
                }
              },
              setCanvas = {
                link = "https://love2d.org/wiki/love.graphics.setCanvas",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "canvas"
                      }
                    },
                    description = "Sets the render target to a specified Canvas. All drawing operations until the next love.graphics.setCanvas call will be redirected to the Canvas and not shown on the screen."
                  },
                  {
                    args = {},
                    description = "Resets the render target to the screen, i.e. re-enables drawing to the screen."
                  },
                  {
                    args = {
                      {
                        name = "canvas1"
                      },
                      {
                        name = "canvas2"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Sets the render target to multiple simultaneous Canvases. All drawing operations until the next love.graphics.setCanvas call will be redirected to the specified canvases and not shown on the screen."
                  }
                }
              },
              setColor = {
                link = "https://love2d.org/wiki/love.graphics.setColor",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "red"
                      },
                      {
                        name = "green"
                      },
                      {
                        name = "blue"
                      },
                      {
                        name = "alpha"
                      }
                    },
                    description = "Sets the color used for drawing."
                  },
                  {
                    args = {
                      {
                        name = "rgba"
                      }
                    },
                    description = "Sets the color used for drawing."
                  }
                }
              },
              setColorMask = {
                link = "https://love2d.org/wiki/love.graphics.setColorMask",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "red"
                      },
                      {
                        name = "green"
                      },
                      {
                        name = "blue"
                      },
                      {
                        name = "alpha"
                      }
                    },
                    description = "Enables color masking for the specified color components."
                  },
                  {
                    args = {},
                    description = "Disables color masking."
                  }
                }
              },
              setDefaultFilter = {
                args = {
                  {
                    name = "min"
                  },
                  {
                    displayName = "[mag]",
                    name = "mag"
                  },
                  {
                    displayName = "[anisotropy]",
                    name = "anisotropy"
                  }
                },
                description = "Sets the default scaling filters used with Images, Canvases, and Fonts.\n\nThis function does not apply retroactively to loaded images.",
                link = "https://love2d.org/wiki/love.graphics.setDefaultFilter",
                type = "function"
              },
              setFont = {
                args = {
                  {
                    name = "font"
                  }
                },
                description = "Set an already-loaded Font as the current font or create and load a new one from the file and size.\n\nIt's recommended that Font objects are created with love.graphics.newFont in the loading stage and then passed to this function in the drawing stage.",
                link = "https://love2d.org/wiki/love.graphics.setFont",
                type = "function"
              },
              setLineJoin = {
                args = {
                  {
                    name = "join"
                  }
                },
                description = "Sets the line join style.",
                link = "https://love2d.org/wiki/love.graphics.setLineJoin",
                type = "function"
              },
              setLineStyle = {
                args = {
                  {
                    name = "style"
                  }
                },
                description = "Sets the line style.",
                link = "https://love2d.org/wiki/love.graphics.setLineStyle",
                type = "function"
              },
              setLineWidth = {
                args = {
                  {
                    name = "width"
                  }
                },
                description = "Sets the line width.",
                link = "https://love2d.org/wiki/love.graphics.setLineWidth",
                type = "function"
              },
              setNewFont = {
                link = "https://love2d.org/wiki/love.graphics.setNewFont",
                returnTypes = {
                  {
                    name = "Font",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        displayName = "[size]",
                        name = "size"
                      }
                    },
                    description = "Creates and sets a new font."
                  },
                  {
                    args = {
                      {
                        name = "file"
                      },
                      {
                        displayName = "[size]",
                        name = "size"
                      }
                    },
                    description = "Creates and sets a new font."
                  },
                  {
                    args = {
                      {
                        name = "data"
                      },
                      {
                        displayName = "[size]",
                        name = "size"
                      }
                    },
                    description = "Creates and sets a new font."
                  }
                }
              },
              setPointSize = {
                args = {
                  {
                    name = "size"
                  }
                },
                description = "Sets the point size.",
                link = "https://love2d.org/wiki/love.graphics.setPointSize",
                type = "function"
              },
              setScissor = {
                link = "https://love2d.org/wiki/love.graphics.setScissor",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      }
                    },
                    description = "Limits the drawing area to a specified rectangle."
                  },
                  {
                    args = {},
                    description = "Disables scissor."
                  }
                }
              },
              setShader = {
                link = "https://love2d.org/wiki/love.graphics.setShader",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Sets or resets a Shader as the current pixel effect or vertex shaders. All drawing operations until the next love.graphics.setShader will be drawn using the Shader object specified.\n\nDisables the shaders when called without arguments."
                  },
                  {
                    args = {
                      {
                        name = "shader"
                      }
                    },
                    description = "Sets or resets a Shader as the current pixel effect or vertex shaders. All drawing operations until the next love.graphics.setShader will be drawn using the Shader object specified.\n\nDisables the shaders when called without arguments."
                  }
                }
              },
              setStencilTest = {
                link = "https://love2d.org/wiki/love.graphics.setStencilTest",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "comparemode"
                      },
                      {
                        name = "comparevalue"
                      }
                    },
                    description = "Configures or disables stencil testing.\n\nWhen stencil testing is enabled, the geometry of everything that is drawn afterward will be clipped / stencilled out based on a comparison between the arguments of this function and the stencil value of each pixel that the geometry touches. The stencil values of pixels are affected via love.graphics.stencil.\n\nEach Canvas has its own per-pixel stencil values."
                  },
                  {
                    args = {},
                    description = "Disables stencil testing."
                  }
                }
              },
              setWireframe = {
                args = {
                  {
                    name = "enable"
                  }
                },
                description = "Sets whether wireframe lines will be used when drawing.\n\nWireframe mode should only be used for debugging. The lines drawn with it enabled do not behave like regular love.graphics lines: their widths don't scale with the coordinate transformations or with love.graphics.setLineWidth, and they don't use the smooth LineStyle.",
                link = "https://love2d.org/wiki/love.graphics.setWireframe",
                type = "function"
              },
              shear = {
                args = {
                  {
                    name = "kx"
                  },
                  {
                    name = "ky"
                  }
                },
                description = "Shears the coordinate system.",
                link = "https://love2d.org/wiki/love.graphics.shear",
                type = "function"
              },
              stencil = {
                args = {
                  {
                    name = "stencilfunction"
                  },
                  {
                    displayName = "[action]",
                    name = "action"
                  },
                  {
                    displayName = "[value]",
                    name = "value"
                  },
                  {
                    displayName = "[keepvalues]",
                    name = "keepvalues"
                  }
                },
                description = "Draws geometry as a stencil.\n\nThe geometry drawn by the supplied function sets invisible stencil values of pixels, instead of setting pixel colors. The stencil values of pixels can act like a mask / stencil - love.graphics.setStencilTest can be used afterward to determine how further rendering is affected by the stencil values in each pixel.\n\nEach Canvas has its own per-pixel stencil values. Stencil values are within the range of [0, 255].",
                link = "https://love2d.org/wiki/love.graphics.stencil",
                type = "function"
              },
              translate = {
                args = {
                  {
                    name = "dx"
                  },
                  {
                    name = "dy"
                  }
                },
                description = "Translates the coordinate system in two dimensions.\n\nWhen this function is called with two numbers, dx, and dy, all the following drawing operations take effect as if their x and y coordinates were x+dx and y+dy.\n\nScale and translate are not commutative operations, therefore, calling them in different orders will change the outcome.\n\nThis change lasts until love.graphics.clear is called (which is called automatically before love.draw in the default love.run function), or a love.graphics.pop reverts to a previous coordinate system state.\n\nTranslating using whole numbers will prevent tearing/blurring of images and fonts draw after translating.",
                link = "https://love2d.org/wiki/love.graphics.translate",
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.graphics",
            type = "table"
          },
          image = {
            description = "Provides an interface to decode encoded image data.",
            fields = {
              isCompressed = {
                link = "https://love2d.org/wiki/love.image.isCompressed",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Determines whether a file can be loaded as CompressedImageData."
                  },
                  {
                    args = {
                      {
                        name = "fileData"
                      }
                    },
                    description = "Determines whether a file can be loaded as CompressedImageData."
                  }
                }
              },
              newCompressedData = {
                link = "https://love2d.org/wiki/love.image.newCompressedData",
                returnTypes = {
                  {
                    name = "CompressedImageData",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page."
                  },
                  {
                    args = {
                      {
                        name = "fileData"
                      }
                    },
                    description = "Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page."
                  }
                }
              },
              newImageData = {
                link = "https://love2d.org/wiki/love.image.newImageData",
                returnTypes = {
                  {
                    name = "ImageData",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      }
                    },
                    description = "Create a new ImageData object."
                  },
                  {
                    args = {
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      },
                      {
                        name = "data"
                      }
                    },
                    description = "Create a new ImageData object."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Create a new ImageData object."
                  },
                  {
                    args = {
                      {
                        name = "filedata"
                      }
                    },
                    description = "Create a new ImageData object."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.image",
            type = "table"
          },
          joystick = {
            description = "Provides an interface to the user's joystick.",
            fields = {
              getJoystickCount = {
                args = {},
                description = "Gets the number of connected joysticks.",
                link = "https://love2d.org/wiki/love.joystick.getJoystickCount",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getJoysticks = {
                args = {},
                description = "Gets a list of connected Joysticks.",
                link = "https://love2d.org/wiki/love.joystick.getJoysticks",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              loadGamepadMappings = {
                link = "https://love2d.org/wiki/love.joystick.loadGamepadMappings",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Loads a gamepad mappings string or file created with love.joystick.saveGamepadMappings."
                  },
                  {
                    args = {
                      {
                        name = "mappings"
                      }
                    },
                    description = "Loads a gamepad mappings string or file created with love.joystick.saveGamepadMappings."
                  }
                }
              },
              saveGamepadMappings = {
                link = "https://love2d.org/wiki/love.joystick.saveGamepadMappings",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Saves the virtual gamepad mappings of all Joysticks that are recognized as gamepads and have either been recently used or their gamepad bindings have been modified."
                  },
                  {
                    args = {},
                    description = "Saves the virtual gamepad mappings of all Joysticks that are recognized as gamepads and have either been recently used or their gamepad bindings have been modified."
                  }
                }
              },
              setGamepadMapping = {
                link = "https://love2d.org/wiki/love.joystick.setGamepadMapping",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "guid"
                      },
                      {
                        name = "button"
                      },
                      {
                        name = "inputtype"
                      },
                      {
                        name = "inputindex"
                      },
                      {
                        name = "hatdirection"
                      }
                    },
                    description = "Binds a virtual gamepad input to a button, axis or hat for all Joysticks of a certain type. For example, if this function is used with a GUID returned by a Dualshock 3 controller in OS X, the binding will affect Joystick:getGamepadAxis and Joystick:isGamepadDown for all Dualshock 3 controllers used with the game when run in OS X.\n\nLÖVE includes built-in gamepad bindings for many common controllers. This function lets you change the bindings or add new ones for types of Joysticks which aren't recognized as gamepads by default.\n\nThe virtual gamepad buttons and axes are designed around the Xbox 360 controller layout."
                  },
                  {
                    args = {
                      {
                        name = "guid"
                      },
                      {
                        name = "axis"
                      },
                      {
                        name = "inputtype"
                      },
                      {
                        name = "inputindex"
                      },
                      {
                        name = "hatdirection"
                      }
                    },
                    description = "Binds a virtual gamepad input to a button, axis or hat for all Joysticks of a certain type. For example, if this function is used with a GUID returned by a Dualshock 3 controller in OS X, the binding will affect Joystick:getGamepadAxis and Joystick:isGamepadDown for all Dualshock 3 controllers used with the game when run in OS X.\n\nLÖVE includes built-in gamepad bindings for many common controllers. This function lets you change the bindings or add new ones for types of Joysticks which aren't recognized as gamepads by default.\n\nThe virtual gamepad buttons and axes are designed around the Xbox 360 controller layout."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.joystick",
            type = "table"
          },
          joystickadded = {
            args = {
              {
                name = "joystick"
              }
            },
            description = "Called when a Joystick is connected.\n\nThis callback is also triggered after love.load for every Joystick which was already connected when the game started up.",
            link = "https://love2d.org/wiki/love.joystickadded",
            type = "function"
          },
          joystickaxis = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "axis"
              },
              {
                name = "value"
              }
            },
            description = "Called when a joystick axis moves.",
            link = "https://love2d.org/wiki/love.joystickaxis",
            type = "function"
          },
          joystickhat = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "hat"
              },
              {
                name = "direction"
              }
            },
            description = "Called when a joystick hat direction changes.",
            link = "https://love2d.org/wiki/love.joystickhat",
            type = "function"
          },
          joystickpressed = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "button"
              }
            },
            description = "Called when a joystick button is pressed.",
            link = "https://love2d.org/wiki/love.joystickpressed",
            type = "function"
          },
          joystickreleased = {
            args = {
              {
                name = "joystick"
              },
              {
                name = "button"
              }
            },
            description = "Called when a joystick button is released.",
            link = "https://love2d.org/wiki/love.joystickreleased",
            type = "function"
          },
          joystickremoved = {
            args = {
              {
                name = "joystick"
              }
            },
            description = "Called when a Joystick is disconnected.",
            link = "https://love2d.org/wiki/love.joystickremoved",
            type = "function"
          },
          keyboard = {
            description = "Provides an interface to the user's keyboard.",
            fields = {
              getKeyFromScancode = {
                args = {
                  {
                    name = "scancode"
                  }
                },
                description = "Gets the key corresponding to the given hardware scancode.\n\nUnlike key constants, Scancodes are keyboard layout-independent. For example the scancode \"w\" will be generated if the key in the same place as the \"w\" key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.\n\nScancodes are useful for creating default controls that have the same physical locations on on all systems.",
                link = "https://love2d.org/wiki/love.keyboard.getKeyFromScancode",
                returnTypes = {
                  {
                    name = "KeyConstant",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getScancodeFromKey = {
                args = {
                  {
                    name = "key"
                  }
                },
                description = "Gets the hardware scancode corresponding to the given key.\n\nUnlike key constants, Scancodes are keyboard layout-independent. For example the scancode \"w\" will be generated if the key in the same place as the \"w\" key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.\n\nScancodes are useful for creating default controls that have the same physical locations on on all systems.",
                link = "https://love2d.org/wiki/love.keyboard.getScancodeFromKey",
                returnTypes = {
                  {
                    name = "Scancode",
                    type = "ref"
                  }
                },
                type = "function"
              },
              hasKeyRepeat = {
                args = {},
                description = "Gets whether key repeat is enabled.",
                link = "https://love2d.org/wiki/love.keyboard.hasKeyRepeat",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              hasTextInput = {
                args = {},
                description = "Gets whether text input events are enabled.",
                link = "https://love2d.org/wiki/love.keyboard.hasTextInput",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isDown = {
                link = "https://love2d.org/wiki/love.keyboard.isDown",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "key"
                      }
                    },
                    description = "Checks whether a certain key is down. Not to be confused with love.keypressed or love.keyreleased."
                  },
                  {
                    args = {
                      {
                        name = "key"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Checks whether a certain key is down. Not to be confused with love.keypressed or love.keyreleased."
                  }
                }
              },
              isScancodeDown = {
                args = {
                  {
                    name = "scancode"
                  },
                  {
                    name = "..."
                  }
                },
                description = "Checks whether the specified Scancodes are pressed. Not to be confused with love.keypressed or love.keyreleased.\n\nUnlike regular KeyConstants, Scancodes are keyboard layout-independent. The scancode \"w\" is used if the key in the same place as the \"w\" key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.",
                link = "https://love2d.org/wiki/love.keyboard.isScancodeDown",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              setKeyRepeat = {
                args = {
                  {
                    name = "enable"
                  }
                },
                description = "Enables or disables key repeat. It is disabled by default.\n\nThe interval between repeats depends on the user's system settings.",
                link = "https://love2d.org/wiki/love.keyboard.setKeyRepeat",
                type = "function"
              },
              setTextInput = {
                link = "https://love2d.org/wiki/love.keyboard.setTextInput",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "enable"
                      }
                    },
                    description = "Enables or disables text input events. It is enabled by default on Windows, Mac, and Linux, and disabled by default on iOS and Android."
                  },
                  {
                    args = {
                      {
                        name = "enable"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "w"
                      },
                      {
                        name = "h"
                      }
                    },
                    description = "Enables or disables text input events. It is enabled by default on Windows, Mac, and Linux, and disabled by default on iOS and Android."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.keyboard",
            type = "table"
          },
          keypressed = {
            args = {
              {
                name = "key"
              },
              {
                name = "scancode"
              },
              {
                name = "isrepeat"
              }
            },
            description = "Callback function triggered when a key is pressed.",
            link = "https://love2d.org/wiki/love.keypressed",
            type = "function"
          },
          keyreleased = {
            args = {
              {
                name = "key"
              },
              {
                name = "scancode"
              }
            },
            description = "Callback function triggered when a keyboard key is released.",
            link = "https://love2d.org/wiki/love.keyreleased",
            type = "function"
          },
          load = {
            args = {
              {
                name = "arg"
              }
            },
            description = "This function is called exactly once at the beginning of the game.",
            link = "https://love2d.org/wiki/love.load",
            type = "function"
          },
          lowmemory = {
            args = {},
            description = "Callback function triggered when the system is running out of memory on mobile devices.\n\n Mobile operating systems may forcefully kill the game if it uses too much memory, so any non-critical resource should be removed if possible (by setting all variables referencing the resources to nil, and calling collectgarbage()), when this event is triggered. Sounds and images in particular tend to use the most memory.",
            link = "https://love2d.org/wiki/love.lowmemory",
            type = "function"
          },
          math = {
            description = "Provides system-independent mathematical functions.",
            fields = {
              compress = {
                link = "https://love2d.org/wiki/love.math.compress",
                returnTypes = {
                  {
                    name = "CompressedData",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "rawstring"
                      },
                      {
                        displayName = "[format]",
                        name = "format"
                      },
                      {
                        displayName = "[level]",
                        name = "level"
                      }
                    },
                    description = "Compresses a string or data using a specific compression algorithm."
                  },
                  {
                    args = {
                      {
                        name = "data"
                      },
                      {
                        displayName = "[format]",
                        name = "format"
                      },
                      {
                        displayName = "[level]",
                        name = "level"
                      }
                    },
                    description = "Compresses a string or data using a specific compression algorithm."
                  }
                }
              },
              decompress = {
                link = "https://love2d.org/wiki/love.math.decompress",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "compressedData"
                      }
                    },
                    description = "Decompresses a CompressedData or previously compressed string or Data object."
                  },
                  {
                    args = {
                      {
                        name = "compressedString"
                      },
                      {
                        name = "format"
                      }
                    },
                    description = "Decompresses a CompressedData or previously compressed string or Data object."
                  },
                  {
                    args = {
                      {
                        name = "data"
                      },
                      {
                        name = "format"
                      }
                    },
                    description = "Decompresses a CompressedData or previously compressed string or Data object."
                  }
                }
              },
              gammaToLinear = {
                link = "https://love2d.org/wiki/love.math.gammaToLinear",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "r"
                      },
                      {
                        name = "g"
                      },
                      {
                        name = "b"
                      }
                    },
                    description = "Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically."
                  },
                  {
                    args = {
                      {
                        name = "color"
                      }
                    },
                    description = "Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically."
                  },
                  {
                    args = {
                      {
                        name = "c"
                      }
                    },
                    description = "Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically."
                  }
                }
              },
              getRandomSeed = {
                args = {},
                description = "Gets the seed of the random number generator.\n\nThe state is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer values above 2^53.",
                link = "https://love2d.org/wiki/love.math.getRandomSeed",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getRandomState = {
                args = {},
                description = "Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with RandomGenerator:setState.\n\nThis is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.\n\nThe value of the state string does not depend on the current operating system.",
                link = "https://love2d.org/wiki/love.math.getRandomState",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              isConvex = {
                link = "https://love2d.org/wiki/love.math.isConvex",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "vertices"
                      }
                    },
                    description = "Checks whether a polygon is convex.\n\nPolygonShapes in love.physics, some forms of Mesh, and polygons drawn with love.graphics.polygon must be simple convex polygons."
                  },
                  {
                    args = {
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "x3"
                      },
                      {
                        name = "y3"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Checks whether a polygon is convex.\n\nPolygonShapes in love.physics, some forms of Mesh, and polygons drawn with love.graphics.polygon must be simple convex polygons."
                  }
                }
              },
              linearToGamma = {
                link = "https://love2d.org/wiki/love.math.linearToGamma",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "lr"
                      },
                      {
                        name = "lg"
                      },
                      {
                        name = "lb"
                      }
                    },
                    description = "Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.\n\nIn general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space."
                  },
                  {
                    args = {
                      {
                        name = "color"
                      }
                    },
                    description = "Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.\n\nIn general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space."
                  },
                  {
                    args = {
                      {
                        name = "lc"
                      }
                    },
                    description = "Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.\n\nIn general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space."
                  }
                }
              },
              newBezierCurve = {
                link = "https://love2d.org/wiki/love.math.newBezierCurve",
                returnTypes = {
                  {
                    name = "BezierCurve",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "vertices"
                      }
                    },
                    description = "Creates a new BezierCurve object.\n\nThe number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc."
                  },
                  {
                    args = {
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "x3"
                      },
                      {
                        name = "y3"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Creates a new BezierCurve object.\n\nThe number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc."
                  }
                }
              },
              newRandomGenerator = {
                link = "https://love2d.org/wiki/love.math.newRandomGenerator",
                returnTypes = {
                  {
                    name = "RandomGenerator",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions."
                  },
                  {
                    args = {
                      {
                        name = "seed"
                      }
                    },
                    description = "Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions."
                  },
                  {
                    args = {
                      {
                        name = "low"
                      },
                      {
                        name = "high"
                      }
                    },
                    description = "Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions."
                  }
                }
              },
              noise = {
                link = "https://love2d.org/wiki/love.math.noise",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x"
                      }
                    },
                    description = "Generates Simplex noise from 1 dimension."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      }
                    },
                    description = "Generates Simplex noise from 2 dimensions."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "z"
                      }
                    },
                    description = "Generates Perlin noise (Simplex noise in version 0.9.2 and older) from 3 dimensions."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "z"
                      },
                      {
                        name = "w"
                      }
                    },
                    description = "Generates Perlin noise (Simplex noise in version 0.9.2 and older) from 4 dimensions."
                  }
                }
              },
              random = {
                link = "https://love2d.org/wiki/love.math.random",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Get uniformly distributed pseudo-random real number within [0, 1]."
                  },
                  {
                    args = {
                      {
                        name = "max"
                      }
                    },
                    description = "Get a uniformly distributed pseudo-random integer within [1, max]."
                  },
                  {
                    args = {
                      {
                        name = "min"
                      },
                      {
                        name = "max"
                      }
                    },
                    description = "Get uniformly distributed pseudo-random integer within [min, max]."
                  }
                }
              },
              randomNormal = {
                args = {
                  {
                    displayName = "[stddev]",
                    name = "stddev"
                  },
                  {
                    displayName = "[mean]",
                    name = "mean"
                  }
                },
                description = "Get a normally distributed pseudo random number.",
                link = "https://love2d.org/wiki/love.math.randomNormal",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              setRandomSeed = {
                link = "https://love2d.org/wiki/love.math.setRandomSeed",
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "seed"
                      }
                    },
                    description = "Sets the seed of the random number generator using the specified integer number."
                  },
                  {
                    args = {
                      {
                        name = "low"
                      },
                      {
                        name = "high"
                      }
                    },
                    description = "Sets the seed of the random number generator using the specified integer number."
                  }
                }
              },
              setRandomState = {
                args = {
                  {
                    name = "state"
                  }
                },
                description = "Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with RandomGenerator:setState.\n\nThis is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.\n\nThe value of the state string does not depend on the current operating system.",
                link = "https://love2d.org/wiki/love.math.setRandomState",
                type = "function"
              },
              triangulate = {
                link = "https://love2d.org/wiki/love.math.triangulate",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "polygon"
                      }
                    },
                    description = "Triangulate a simple polygon."
                  },
                  {
                    args = {
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "x3"
                      },
                      {
                        name = "y3"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Triangulate a simple polygon."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.math",
            type = "table"
          },
          mouse = {
            description = "Provides an interface to the user's mouse.",
            fields = {
              getCursor = {
                args = {},
                description = "Gets the current Cursor.",
                link = "https://love2d.org/wiki/love.mouse.getCursor",
                returnTypes = {
                  {
                    name = "Cursor",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getPosition = {
                args = {},
                description = "Returns the current position of the mouse.",
                link = "https://love2d.org/wiki/love.mouse.getPosition",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getRelativeMode = {
                args = {},
                description = "Gets whether relative mode is enabled for the mouse.\n\nIf relative mode is enabled, the cursor is hidden and doesn't move when the mouse does, but relative mouse motion events are still generated via love.mousemoved. This lets the mouse move in any direction indefinitely without the cursor getting stuck at the edges of the screen.\n\nThe reported position of the mouse is not updated while relative mode is enabled, even when relative mouse motion events are generated.",
                link = "https://love2d.org/wiki/love.mouse.getRelativeMode",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              getSystemCursor = {
                args = {
                  {
                    name = "ctype"
                  }
                },
                description = "Gets a Cursor object representing a system-native hardware cursor.\n\n Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.",
                link = "https://love2d.org/wiki/love.mouse.getSystemCursor",
                returnTypes = {
                  {
                    name = "Cursor",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getX = {
                args = {},
                description = "Returns the current x position of the mouse.",
                link = "https://love2d.org/wiki/love.mouse.getX",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getY = {
                args = {},
                description = "Returns the current y position of the mouse.",
                link = "https://love2d.org/wiki/love.mouse.getY",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              hasCursor = {
                args = {},
                description = "Gets whether cursor functionality is supported.\n\nIf it isn't supported, calling love.mouse.newCursor and love.mouse.getSystemCursor will cause an error. Mobile devices do not support cursors.",
                link = "https://love2d.org/wiki/love.mouse.hasCursor",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isDown = {
                args = {
                  {
                    name = "button"
                  },
                  {
                    name = "..."
                  }
                },
                description = "Checks whether a certain mouse button is down. This function does not detect mousewheel scrolling; you must use the love.wheelmoved (or love.mousepressed in version 0.9.2 and older) callback for that.",
                link = "https://love2d.org/wiki/love.mouse.isDown",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isGrabbed = {
                args = {},
                description = "Checks if the mouse is grabbed.",
                link = "https://love2d.org/wiki/love.mouse.isGrabbed",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isVisible = {
                args = {},
                description = "Checks if the cursor is visible.",
                link = "https://love2d.org/wiki/love.mouse.isVisible",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              newCursor = {
                link = "https://love2d.org/wiki/love.mouse.newCursor",
                returnTypes = {
                  {
                    name = "Cursor",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "imageData"
                      },
                      {
                        displayName = "[hotx]",
                        name = "hotx"
                      },
                      {
                        displayName = "[hoty]",
                        name = "hoty"
                      }
                    },
                    description = "Creates a new hardware Cursor object from an image file or ImageData.\n\nHardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.\n\nThe hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle."
                  },
                  {
                    args = {
                      {
                        name = "filepath"
                      },
                      {
                        displayName = "[hotx]",
                        name = "hotx"
                      },
                      {
                        displayName = "[hoty]",
                        name = "hoty"
                      }
                    },
                    description = "Creates a new hardware Cursor object from an image file or ImageData.\n\nHardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.\n\nThe hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle."
                  },
                  {
                    args = {
                      {
                        name = "fileData"
                      },
                      {
                        displayName = "[hotx]",
                        name = "hotx"
                      },
                      {
                        displayName = "[hoty]",
                        name = "hoty"
                      }
                    },
                    description = "Creates a new hardware Cursor object from an image file or ImageData.\n\nHardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.\n\nThe hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle."
                  }
                }
              },
              setCursor = {
                link = "https://love2d.org/wiki/love.mouse.setCursor",
                type = "function",
                variants = {
                  {
                    args = {},
                    description = "Sets the current mouse cursor.\n\nResets the current mouse cursor to the default when called without arguments."
                  },
                  {
                    args = {
                      {
                        name = "cursor"
                      }
                    },
                    description = "Sets the current mouse cursor.\n\nResets the current mouse cursor to the default when called without arguments."
                  }
                }
              },
              setGrabbed = {
                args = {
                  {
                    name = "grab"
                  }
                },
                description = "Grabs the mouse and confines it to the window.",
                link = "https://love2d.org/wiki/love.mouse.setGrabbed",
                type = "function"
              },
              setPosition = {
                args = {
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  }
                },
                description = "Sets the current position of the mouse. Non-integer values are floored.",
                link = "https://love2d.org/wiki/love.mouse.setPosition",
                type = "function"
              },
              setRelativeMode = {
                args = {
                  {
                    name = "enable"
                  }
                },
                description = "Sets whether relative mode is enabled for the mouse.\n\nWhen relative mode is enabled, the cursor is hidden and doesn't move when the mouse does, but relative mouse motion events are still generated via love.mousemoved. This lets the mouse move in any direction indefinitely without the cursor getting stuck at the edges of the screen.\n\nThe reported position of the mouse is not updated while relative mode is enabled, even when relative mouse motion events are generated.",
                link = "https://love2d.org/wiki/love.mouse.setRelativeMode",
                type = "function"
              },
              setVisible = {
                args = {
                  {
                    name = "visible"
                  }
                },
                description = "Sets the visibility of the cursor.",
                link = "https://love2d.org/wiki/love.mouse.setVisible",
                type = "function"
              },
              setX = {
                args = {
                  {
                    name = "x"
                  }
                },
                description = "Sets the current X position of the mouse. Non-integer values are floored.",
                link = "https://love2d.org/wiki/love.mouse.setX",
                type = "function"
              },
              setY = {
                args = {
                  {
                    name = "y"
                  }
                },
                description = "Sets the current Y position of the mouse. Non-integer values are floored.",
                link = "https://love2d.org/wiki/love.mouse.setY",
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.mouse",
            type = "table"
          },
          mousefocus = {
            args = {
              {
                name = "focus"
              }
            },
            description = "Callback function triggered when window receives or loses mouse focus.",
            link = "https://love2d.org/wiki/love.mousefocus",
            type = "function"
          },
          mousemoved = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "dx"
              },
              {
                name = "dy"
              },
              {
                name = "istouch"
              }
            },
            description = "Callback function triggered when the mouse is moved.",
            link = "https://love2d.org/wiki/love.mousemoved",
            type = "function"
          },
          mousepressed = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "button"
              },
              {
                name = "isTouch"
              }
            },
            description = "Callback function triggered when a mouse button is pressed.",
            link = "https://love2d.org/wiki/love.mousepressed",
            type = "function"
          },
          mousereleased = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "button"
              },
              {
                name = "isTouch"
              }
            },
            description = "Callback function triggered when a mouse button is released.",
            link = "https://love2d.org/wiki/love.mousereleased",
            type = "function"
          },
          physics = {
            description = "Can simulate 2D rigid body physics in a realistic manner. This module is based on Box2D, and this API corresponds to the Box2D API as closely as possible.",
            fields = {
              getDistance = {
                args = {
                  {
                    name = "fixture1"
                  },
                  {
                    name = "fixture2"
                  }
                },
                description = "Returns the two closest points between two fixtures and their distance.",
                link = "https://love2d.org/wiki/love.physics.getDistance",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getMeter = {
                args = {},
                description = "Get the scale of the world.\n\nThe world scale is the number of pixels per meter. Try to keep your shape sizes less than 10 times this scale.\n\nThis is important because the physics in Box2D is tuned to work well for objects of size 0.1m up to 10m. All physics coordinates are divided by this number for the physics calculations.",
                link = "https://love2d.org/wiki/love.physics.getMeter",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              newBody = {
                args = {
                  {
                    name = "world"
                  },
                  {
                    displayName = "[x]",
                    name = "x"
                  },
                  {
                    displayName = "[y]",
                    name = "y"
                  },
                  {
                    displayName = "[type]",
                    name = "type"
                  }
                },
                description = "Creates a new body.\n\nThere are three types of bodies. Static bodies do not move, have a infinite mass, and can be used for level boundaries. Dynamic bodies are the main actors in the simulation, they collide with everything. Kinematic bodies do not react to forces and only collide with dynamic bodies.\n\nThe mass of the body gets calculated when a Fixture is attached or removed, but can be changed at any time with Body:setMass or Body:resetMassData.",
                link = "https://love2d.org/wiki/love.physics.newBody",
                returnTypes = {
                  {
                    name = "Body",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newChainShape = {
                link = "https://love2d.org/wiki/love.physics.newChainShape",
                returnTypes = {
                  {
                    name = "ChainShape",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "loop"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Creates a new ChainShape."
                  },
                  {
                    args = {
                      {
                        name = "loop"
                      },
                      {
                        name = "points"
                      }
                    },
                    description = "Creates a new ChainShape."
                  }
                }
              },
              newCircleShape = {
                link = "https://love2d.org/wiki/love.physics.newCircleShape",
                returnTypes = {
                  {
                    name = "CircleShape",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "radius"
                      }
                    },
                    description = "Creates a new CircleShape."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "radius"
                      }
                    },
                    description = "Creates a new CircleShape."
                  }
                }
              },
              newDistanceJoint = {
                args = {
                  {
                    name = "body1"
                  },
                  {
                    name = "body2"
                  },
                  {
                    name = "x1"
                  },
                  {
                    name = "y1"
                  },
                  {
                    name = "x2"
                  },
                  {
                    name = "y2"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Create a distance joint between two bodies.\n\nThis joint constrains the distance between two points on two bodies to be constant. These two points are specified in world coordinates and the two bodies are assumed to be in place when this joint is created. The first anchor point is connected to the first body and the second to the second body, and the points define the length of the distance joint.",
                link = "https://love2d.org/wiki/love.physics.newDistanceJoint",
                returnTypes = {
                  {
                    name = "DistanceJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newEdgeShape = {
                args = {
                  {
                    name = "x1"
                  },
                  {
                    name = "y1"
                  },
                  {
                    name = "x2"
                  },
                  {
                    name = "y2"
                  }
                },
                description = "Creates a edge shape.",
                link = "https://love2d.org/wiki/love.physics.newEdgeShape",
                returnTypes = {
                  {
                    name = "EdgeShape",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newFixture = {
                args = {
                  {
                    name = "body"
                  },
                  {
                    name = "shape"
                  },
                  {
                    displayName = "[density]",
                    name = "density"
                  }
                },
                description = "Creates and attaches a Fixture to a body.",
                link = "https://love2d.org/wiki/love.physics.newFixture",
                returnTypes = {
                  {
                    name = "Fixture",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newFrictionJoint = {
                args = {
                  {
                    name = "body1"
                  },
                  {
                    name = "body2"
                  },
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Create a friction joint between two bodies. A FrictionJoint applies friction to a body.",
                link = "https://love2d.org/wiki/love.physics.newFrictionJoint",
                returnTypes = {
                  {
                    name = "FrictionJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newGearJoint = {
                args = {
                  {
                    name = "joint1"
                  },
                  {
                    name = "joint2"
                  },
                  {
                    displayName = "[ratio]",
                    name = "ratio"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Create a gear joint connecting two joints.\n\nThe gear joint connects two joints that must be either prismatic or revolute joints. Using this joint requires that the joints it uses connect their respective bodies to the ground and have the ground as the first body. When destroying the bodies and joints you must make sure you destroy the gear joint before the other joints.\n\nThe gear joint has a ratio the determines how the angular or distance values of the connected joints relate to each other. The formula coordinate1 + ratio * coordinate2 always has a constant value that is set when the gear joint is created.",
                link = "https://love2d.org/wiki/love.physics.newGearJoint",
                returnTypes = {
                  {
                    name = "GearJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newMotorJoint = {
                link = "https://love2d.org/wiki/love.physics.newMotorJoint",
                returnTypes = {
                  {
                    name = "MotorJoint",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        displayName = "[correctionFactor]",
                        name = "correctionFactor"
                      }
                    },
                    description = "Creates a joint between two bodies which controls the relative motion between them.\n\nPosition and rotation offsets can be specified once the MotorJoint has been created, as well as the maximum motor force and torque that will be be applied to reach the target offsets."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        displayName = "[correctionFactor]",
                        name = "correctionFactor"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Creates a joint between two bodies which controls the relative motion between them.\n\nPosition and rotation offsets can be specified once the MotorJoint has been created, as well as the maximum motor force and torque that will be be applied to reach the target offsets."
                  }
                }
              },
              newMouseJoint = {
                args = {
                  {
                    name = "body"
                  },
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  }
                },
                description = "Create a joint between a body and the mouse.\n\nThis joint actually connects the body to a fixed point in the world. To make it follow the mouse, the fixed point must be updated every timestep (example below).\n\nThe advantage of using a MouseJoint instead of just changing a body position directly is that collisions and reactions to other joints are handled by the physics engine.",
                link = "https://love2d.org/wiki/love.physics.newMouseJoint",
                returnTypes = {
                  {
                    name = "MouseJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newPolygonShape = {
                link = "https://love2d.org/wiki/love.physics.newPolygonShape",
                returnTypes = {
                  {
                    name = "PolygonShape",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "..."
                      }
                    },
                    description = "Creates a new PolygonShape.\n\nThis shape can have 8 vertices at most, and must form a convex shape."
                  },
                  {
                    args = {
                      {
                        name = "vertices"
                      }
                    },
                    description = "Creates a new PolygonShape.\n\nThis shape can have 8 vertices at most, and must form a convex shape."
                  }
                }
              },
              newPrismaticJoint = {
                link = "https://love2d.org/wiki/love.physics.newPrismaticJoint",
                returnTypes = {
                  {
                    name = "PrismaticJoint",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "ax"
                      },
                      {
                        name = "ay"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Create a prismatic joints between two bodies.\n\nA prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "ax"
                      },
                      {
                        name = "ay"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Create a prismatic joints between two bodies.\n\nA prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        name = "ax"
                      },
                      {
                        name = "ay"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      },
                      {
                        displayName = "[referenceAngle]",
                        name = "referenceAngle"
                      }
                    },
                    description = "Create a prismatic joints between two bodies.\n\nA prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque."
                  }
                }
              },
              newPulleyJoint = {
                args = {
                  {
                    name = "body1"
                  },
                  {
                    name = "body2"
                  },
                  {
                    name = "gx1"
                  },
                  {
                    name = "gy1"
                  },
                  {
                    name = "gx2"
                  },
                  {
                    name = "gy2"
                  },
                  {
                    name = "x1"
                  },
                  {
                    name = "y1"
                  },
                  {
                    name = "x2"
                  },
                  {
                    name = "y2"
                  },
                  {
                    displayName = "[ratio]",
                    name = "ratio"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Create a pulley joint to join two bodies to each other and the ground.\n\nThe pulley joint simulates a pulley with an optional block and tackle. If the ratio parameter has a value different from one, then the simulated rope extends faster on one side than the other. In a pulley joint the total length of the simulated rope is the constant length1 + ratio * length2, which is set when the pulley joint is created.\n\nPulley joints can behave unpredictably if one side is fully extended. It is recommended that the method setMaxLengths  be used to constrain the maximum lengths each side can attain.",
                link = "https://love2d.org/wiki/love.physics.newPulleyJoint",
                returnTypes = {
                  {
                    name = "PulleyJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newRectangleShape = {
                link = "https://love2d.org/wiki/love.physics.newRectangleShape",
                returnTypes = {
                  {
                    name = "PolygonShape",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      }
                    },
                    description = "Shorthand for creating rectangular PolygonShapes.\n\nBy default, the local origin is located at the center of the rectangle as opposed to the top left for graphics."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        name = "width"
                      },
                      {
                        name = "height"
                      },
                      {
                        displayName = "[angle]",
                        name = "angle"
                      }
                    },
                    description = "Shorthand for creating rectangular PolygonShapes.\n\nBy default, the local origin is located at the center of the rectangle as opposed to the top left for graphics."
                  }
                }
              },
              newRevoluteJoint = {
                link = "https://love2d.org/wiki/love.physics.newRevoluteJoint",
                returnTypes = {
                  {
                    name = "RevoluteJoint",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Creates a pivot joint between two bodies.\n\nThis joint connects two bodies to a point around which they can pivot."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      },
                      {
                        displayName = "[referenceAngle]",
                        name = "referenceAngle"
                      }
                    },
                    description = "Creates a pivot joint between two bodies.\n\nThis joint connects two bodies to a point around which they can pivot."
                  }
                }
              },
              newRopeJoint = {
                args = {
                  {
                    name = "body1"
                  },
                  {
                    name = "body2"
                  },
                  {
                    name = "x1"
                  },
                  {
                    name = "y1"
                  },
                  {
                    name = "x2"
                  },
                  {
                    name = "y2"
                  },
                  {
                    name = "maxLength"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Create a joint between two bodies. Its only function is enforcing a max distance between these bodies.",
                link = "https://love2d.org/wiki/love.physics.newRopeJoint",
                returnTypes = {
                  {
                    name = "RopeJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newWeldJoint = {
                link = "https://love2d.org/wiki/love.physics.newWeldJoint",
                returnTypes = {
                  {
                    name = "WeldJoint",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      }
                    },
                    description = "Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver."
                  },
                  {
                    args = {
                      {
                        name = "body1"
                      },
                      {
                        name = "body2"
                      },
                      {
                        name = "x1"
                      },
                      {
                        name = "y1"
                      },
                      {
                        name = "x2"
                      },
                      {
                        name = "y2"
                      },
                      {
                        displayName = "[collideConnected]",
                        name = "collideConnected"
                      },
                      {
                        displayName = "[referenceAngle]",
                        name = "referenceAngle"
                      }
                    },
                    description = "Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver."
                  }
                }
              },
              newWheelJoint = {
                args = {
                  {
                    name = "body1"
                  },
                  {
                    name = "body2"
                  },
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    name = "ax"
                  },
                  {
                    name = "ay"
                  },
                  {
                    displayName = "[collideConnected]",
                    name = "collideConnected"
                  }
                },
                description = "Creates a wheel joint.",
                link = "https://love2d.org/wiki/love.physics.newWheelJoint",
                returnTypes = {
                  {
                    name = "WheelJoint",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newWorld = {
                args = {
                  {
                    displayName = "[xg]",
                    name = "xg"
                  },
                  {
                    displayName = "[yg]",
                    name = "yg"
                  },
                  {
                    displayName = "[sleep]",
                    name = "sleep"
                  }
                },
                description = "Creates a new World.",
                link = "https://love2d.org/wiki/love.physics.newWorld",
                returnTypes = {
                  {
                    name = "World",
                    type = "ref"
                  }
                },
                type = "function"
              },
              setMeter = {
                args = {
                  {
                    name = "scale"
                  }
                },
                description = "Sets the pixels to meter scale factor.\n\nAll coordinates in the physics module are divided by this number and converted to meters, and it creates a convenient way to draw the objects directly to the screen without the need for graphics transformations.\n\nIt is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters. The default meter scale is 30.\n\nlove.physics.setMeter does not apply retroactively to created objects. Created objects retain their meter coordinates but the scale factor will affect their pixel coordinates.",
                link = "https://love2d.org/wiki/love.physics.setMeter",
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.physics",
            type = "table"
          },
          quit = {
            args = {},
            description = "Callback function triggered when the game is closed.",
            link = "https://love2d.org/wiki/love.quit",
            returnTypes = {
              {
                type = "boolean"
              }
            },
            type = "function"
          },
          resize = {
            args = {
              {
                name = "w"
              },
              {
                name = "h"
              }
            },
            description = "Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.\n\nCalls to love.window.setMode will only trigger this event if the width or height of the window after the call doesn't match the requested width and height. This can happen if a fullscreen mode is requested which doesn't match any supported mode, or if the fullscreen type is 'desktop' and the requested width or height don't match the desktop resolution.",
            link = "https://love2d.org/wiki/love.resize",
            type = "function"
          },
          run = {
            args = {},
            description = "The main function, containing the main loop. A sensible default is used when left out.",
            link = "https://love2d.org/wiki/love.run",
            type = "function"
          },
          sound = {
            description = "This module is responsible for decoding sound files. It can't play the sounds, see love.audio for that.",
            fields = {
              newDecoder = {
                link = "https://love2d.org/wiki/love.sound.newDecoder",
                returnTypes = {
                  {
                    name = "Decoder",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "file"
                      },
                      {
                        displayName = "[buffer]",
                        name = "buffer"
                      }
                    },
                    description = "Attempts to find a decoder for the encoded sound data in the specified file."
                  },
                  {
                    args = {
                      {
                        name = "filename"
                      },
                      {
                        displayName = "[buffer]",
                        name = "buffer"
                      }
                    },
                    description = "Attempts to find a decoder for the encoded sound data in the specified file."
                  }
                }
              },
              newSoundData = {
                link = "https://love2d.org/wiki/love.sound.newSoundData",
                returnTypes = {
                  {
                    name = "SoundData",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Creates new SoundData from a file. It's also possible to create SoundData with a custom sample rate, channel and bit depth.\n\nThe sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way."
                  },
                  {
                    args = {
                      {
                        name = "file"
                      }
                    },
                    description = "Creates new SoundData from a file. It's also possible to create SoundData with a custom sample rate, channel and bit depth.\n\nThe sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way."
                  },
                  {
                    args = {
                      {
                        name = "data"
                      }
                    },
                    description = "Creates new SoundData from a file. It's also possible to create SoundData with a custom sample rate, channel and bit depth.\n\nThe sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way."
                  },
                  {
                    args = {
                      {
                        name = "samples"
                      },
                      {
                        displayName = "[rate]",
                        name = "rate"
                      },
                      {
                        displayName = "[bits]",
                        name = "bits"
                      },
                      {
                        displayName = "[channels]",
                        name = "channels"
                      }
                    },
                    description = "Creates new SoundData from a file. It's also possible to create SoundData with a custom sample rate, channel and bit depth.\n\nThe sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.sound",
            type = "table"
          },
          system = {
            description = "Provides access to information about the user's system.",
            fields = {
              getClipboardText = {
                args = {},
                description = "Gets text from the clipboard.",
                link = "https://love2d.org/wiki/love.system.getClipboardText",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getOS = {
                args = {},
                description = "Gets the current operating system. In general, LÖVE abstracts away the need to know the current operating system, but there are a few cases where it can be useful (especially in combination with os.execute.)",
                link = "https://love2d.org/wiki/love.system.getOS",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getPowerInfo = {
                args = {},
                description = "Gets information about the system's power supply.",
                link = "https://love2d.org/wiki/love.system.getPowerInfo",
                returnTypes = {
                  {
                    name = "PowerState",
                    type = "ref"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getProcessorCount = {
                args = {},
                description = "Gets the number of CPU cores in the system.\n\nThe number includes the threads reported if technologies such as Intel's Hyper-threading are enabled. For example, on a 4-core CPU with Hyper-threading, this function will return 8.",
                link = "https://love2d.org/wiki/love.system.getProcessorCount",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              openURL = {
                args = {
                  {
                    name = "url"
                  }
                },
                description = "Opens a URL with the user's web or file browser.",
                link = "https://love2d.org/wiki/love.system.openURL",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              setClipboardText = {
                args = {
                  {
                    name = "text"
                  }
                },
                description = "Puts text in the clipboard.",
                link = "https://love2d.org/wiki/love.system.setClipboardText",
                type = "function"
              },
              vibrate = {
                args = {
                  {
                    displayName = "[seconds]",
                    name = "seconds"
                  }
                },
                description = "Causes the device to vibrate, if possible. Currently this will only work on Android and iOS devices that have a built-in vibration motor.",
                link = "https://love2d.org/wiki/love.system.vibrate",
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.system",
            type = "table"
          },
          textedited = {
            args = {
              {
                name = "text"
              },
              {
                name = "start"
              },
              {
                name = "length"
              }
            },
            description = "Called when the candidate text for an IME (Input Method Editor) has changed.\n\nThe candidate text is not the final text that the user will eventually choose. Use love.textinput for that.",
            link = "https://love2d.org/wiki/love.textedited",
            type = "function"
          },
          textinput = {
            args = {
              {
                name = "text"
              }
            },
            description = "Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text \"@\" will be generated.",
            link = "https://love2d.org/wiki/love.textinput",
            type = "function"
          },
          thread = {
            description = "Allows you to work with threads.\n\nThreads are separate Lua environments, running in parallel to the main code. As their code runs separately, they can be used to compute complex operations without adversely affecting the frame rate of the main thread. However, as they are separate environments, they cannot access the variables and functions of the main thread, and communication between threads is limited.\n\nAll LOVE objects (userdata) are shared among threads so you'll only have to send their references across threads. You may run into concurrency issues if you manipulate an object on multiple threads at the same time.\n\nWhen a Thread is started, it only loads the love.thread module. Every other module has to be loaded with require.",
            fields = {
              getChannel = {
                args = {
                  {
                    name = "name"
                  }
                },
                description = "Creates or retrieves a named thread channel.",
                link = "https://love2d.org/wiki/love.thread.getChannel",
                returnTypes = {
                  {
                    name = "Channel",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newChannel = {
                args = {},
                description = "Create a new unnamed thread channel.\n\nOne use for them is to pass new unnamed channels to other threads via Channel:push",
                link = "https://love2d.org/wiki/love.thread.newChannel",
                returnTypes = {
                  {
                    name = "Channel",
                    type = "ref"
                  }
                },
                type = "function"
              },
              newThread = {
                link = "https://love2d.org/wiki/love.thread.newThread",
                returnTypes = {
                  {
                    name = "Thread",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Creates a new Thread from a File or Data object."
                  },
                  {
                    args = {
                      {
                        name = "fileData"
                      }
                    },
                    description = "Creates a new Thread from a File or Data object."
                  },
                  {
                    args = {
                      {
                        name = "codestring"
                      }
                    },
                    description = "Creates a new Thread from a File or Data object."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.thread",
            type = "table"
          },
          threaderror = {
            args = {
              {
                name = "thread"
              },
              {
                name = "errorstr"
              }
            },
            description = "Callback function triggered when a Thread encounters an error.",
            link = "https://love2d.org/wiki/love.threaderror",
            type = "function"
          },
          timer = {
            description = "Provides an interface to the user's clock.",
            fields = {
              getAverageDelta = {
                args = {},
                description = "Returns the average delta time (seconds per frame) over the last second.",
                link = "https://love2d.org/wiki/love.timer.getAverageDelta",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getDelta = {
                args = {},
                description = "Returns the time between the last two frames.",
                link = "https://love2d.org/wiki/love.timer.getDelta",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getFPS = {
                args = {},
                description = "Returns the current frames per second.",
                link = "https://love2d.org/wiki/love.timer.getFPS",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getTime = {
                args = {},
                description = "Returns the value of a timer with an unspecified starting time. This function should only be used to calculate differences between points in time, as the starting time of the timer is unknown.",
                link = "https://love2d.org/wiki/love.timer.getTime",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              sleep = {
                args = {
                  {
                    name = "s"
                  }
                },
                description = "Sleeps the program for the specified amount of time.",
                link = "https://love2d.org/wiki/love.timer.sleep",
                type = "function"
              },
              step = {
                args = {},
                description = "Measures the time between two frames. Calling this changes the return value of love.timer.getDelta.",
                link = "https://love2d.org/wiki/love.timer.step",
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.timer",
            type = "table"
          },
          touch = {
            description = "Provides an interface to touch-screen presses.",
            fields = {
              getPosition = {
                args = {
                  {
                    name = "id"
                  }
                },
                description = "Gets the current position of the specified touch-press, in pixels.",
                link = "https://love2d.org/wiki/love.touch.getPosition",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getPressure = {
                args = {
                  {
                    name = "id"
                  }
                },
                description = "Gets the current pressure of the specified touch-press.",
                link = "https://love2d.org/wiki/love.touch.getPressure",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getTouches = {
                args = {},
                description = "Gets a list of all active touch-presses.",
                link = "https://love2d.org/wiki/love.touch.getTouches",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              }
            },
            link = "https://love2d.org/wiki/love.touch",
            type = "table"
          },
          touchmoved = {
            args = {
              {
                name = "id"
              },
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "dx"
              },
              {
                name = "dy"
              },
              {
                name = "pressure"
              }
            },
            description = "Callback function triggered when a touch press moves inside the touch screen.",
            link = "https://love2d.org/wiki/love.touchmoved",
            type = "function"
          },
          touchpressed = {
            args = {
              {
                name = "id"
              },
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "dx"
              },
              {
                name = "dy"
              },
              {
                name = "pressure"
              }
            },
            description = "Callback function triggered when the touch screen is touched.",
            link = "https://love2d.org/wiki/love.touchpressed",
            type = "function"
          },
          touchreleased = {
            args = {
              {
                name = "id"
              },
              {
                name = "x"
              },
              {
                name = "y"
              },
              {
                name = "dx"
              },
              {
                name = "dy"
              },
              {
                name = "pressure"
              }
            },
            description = "Callback function triggered when the touch screen stops being touched.",
            link = "https://love2d.org/wiki/love.touchreleased",
            type = "function"
          },
          update = {
            args = {
              {
                name = "dt"
              }
            },
            description = "Callback function used to update the state of the game every frame.",
            link = "https://love2d.org/wiki/love.update",
            type = "function"
          },
          video = {
            description = "This module is responsible for decoding, controlling, and streaming video files.\n\nIt can't draw the videos, see love.graphics.newVideo and Video objects for that.",
            fields = {
              newVideoStream = {
                link = "https://love2d.org/wiki/love.video.newVideoStream",
                returnTypes = {
                  {
                    name = "VideoStream",
                    type = "ref"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "filename"
                      }
                    },
                    description = "Creates a new VideoStream. Currently only Ogg Theora video files are supported. VideoStreams can't draw videos, see love.graphics.newVideo for that."
                  },
                  {
                    args = {
                      {
                        name = "file"
                      }
                    },
                    description = "Creates a new VideoStream. Currently only Ogg Theora video files are supported. VideoStreams can't draw videos, see love.graphics.newVideo for that."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.video",
            type = "table"
          },
          visible = {
            args = {
              {
                name = "visible"
              }
            },
            description = "Callback function triggered when window is minimized/hidden or unminimized by the user.",
            link = "https://love2d.org/wiki/love.visible",
            type = "function"
          },
          wheelmoved = {
            args = {
              {
                name = "x"
              },
              {
                name = "y"
              }
            },
            description = "Callback function triggered when the mouse wheel is moved.",
            link = "https://love2d.org/wiki/love.wheelmoved",
            type = "function"
          },
          window = {
            description = "Provides an interface for modifying and retrieving information about the program's window.",
            fields = {
              close = {
                args = {},
                description = "Closes the window. It can be reopened with love.window.setMode.",
                link = "https://love2d.org/wiki/love.window.close",
                type = "function"
              },
              fromPixels = {
                link = "https://love2d.org/wiki/love.window.fromPixels",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "pixelvalue"
                      }
                    },
                    description = "Converts a number from pixels to density-independent units.\n\nThe pixel density inside the window might be greater (or smaller) than the \"size\" of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.fromPixels(1600) would return 800 in that case.\n\nThis function converts coordinates from pixels to the size users are expecting them to display at onscreen. love.window.toPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.\n\nMost LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units."
                  },
                  {
                    args = {
                      {
                        name = "px"
                      },
                      {
                        name = "py"
                      }
                    },
                    description = "Converts a number from pixels to density-independent units.\n\nThe pixel density inside the window might be greater (or smaller) than the \"size\" of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.fromPixels(1600) would return 800 in that case.\n\nThis function converts coordinates from pixels to the size users are expecting them to display at onscreen. love.window.toPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.\n\nMost LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units."
                  }
                }
              },
              getDisplayName = {
                args = {
                  {
                    name = "displayindex"
                  }
                },
                description = "Gets the name of a display.",
                link = "https://love2d.org/wiki/love.window.getDisplayName",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              getFullscreen = {
                args = {},
                description = "Gets whether the window is fullscreen.",
                link = "https://love2d.org/wiki/love.window.getFullscreen",
                returnTypes = {
                  {
                    type = "boolean"
                  },
                  {
                    name = "FullscreenType",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getFullscreenModes = {
                args = {
                  {
                    displayName = "[display]",
                    name = "display"
                  }
                },
                description = "Gets a list of supported fullscreen modes.",
                link = "https://love2d.org/wiki/love.window.getFullscreenModes",
                returnTypes = {
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getIcon = {
                args = {},
                description = "Gets the window icon.",
                link = "https://love2d.org/wiki/love.window.getIcon",
                returnTypes = {
                  {
                    name = "ImageData",
                    type = "ref"
                  }
                },
                type = "function"
              },
              getMode = {
                args = {},
                description = "Returns the current display mode.",
                link = "https://love2d.org/wiki/love.window.getMode",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "table"
                  }
                },
                type = "function"
              },
              getPixelScale = {
                args = {},
                description = "Gets the DPI scale factor associated with the window.\n\nThe pixel density inside the window might be greater (or smaller) than the \"size\" of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.getPixelScale() would return 2.0 in that case.\n\nThe love.window.fromPixels and love.window.toPixels functions can also be used to convert between units.\n\nThe highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.",
                link = "https://love2d.org/wiki/love.window.getPixelScale",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getPosition = {
                args = {},
                description = "Gets the position of the window on the screen.\n\nThe window position is in the coordinate space of the display it is currently in.",
                link = "https://love2d.org/wiki/love.window.getPosition",
                returnTypes = {
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  },
                  {
                    type = "number"
                  }
                },
                type = "function"
              },
              getTitle = {
                args = {},
                description = "Gets the window title.",
                link = "https://love2d.org/wiki/love.window.getTitle",
                returnTypes = {
                  {
                    type = "string"
                  }
                },
                type = "function"
              },
              hasFocus = {
                args = {},
                description = "Checks if the game window has keyboard focus.",
                link = "https://love2d.org/wiki/love.window.hasFocus",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              hasMouseFocus = {
                args = {},
                description = "Checks if the game window has mouse focus.",
                link = "https://love2d.org/wiki/love.window.hasMouseFocus",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isDisplaySleepEnabled = {
                args = {},
                description = "Gets whether the display is allowed to sleep while the program is running.\n\nDisplay sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.",
                link = "https://love2d.org/wiki/love.window.isDisplaySleepEnabled",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isMaximized = {
                args = {},
                description = "Gets whether the Window is currently maximized.\n\nThe window can be maximized if it is not fullscreen and is resizable, and either the user has pressed the window's Maximize button or love.window.maximize has been called.",
                link = "https://love2d.org/wiki/love.window.isMaximized",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isOpen = {
                args = {},
                description = "Checks if the window is open.",
                link = "https://love2d.org/wiki/love.window.isOpen",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              isVisible = {
                args = {},
                description = "Checks if the game window is visible.\n\nThe window is considered visible if it's not minimized and the program isn't hidden.",
                link = "https://love2d.org/wiki/love.window.isVisible",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              maximize = {
                args = {},
                description = "Makes the window as large as possible.\n\nThis function has no effect if the window isn't resizable, since it essentially programmatically presses the window's \"maximize\" button.",
                link = "https://love2d.org/wiki/love.window.maximize",
                type = "function"
              },
              minimize = {
                args = {},
                description = "Minimizes the window to the system's task bar / dock.",
                link = "https://love2d.org/wiki/love.window.minimize",
                type = "function"
              },
              requestAttention = {
                args = {
                  {
                    displayName = "[continuous]",
                    name = "continuous"
                  }
                },
                description = "Causes the window to request the attention of the user if it is not in the foreground.\n\nIn Windows the taskbar icon will flash, and in OS X the dock icon will bounce.",
                link = "https://love2d.org/wiki/love.window.requestAttention",
                type = "function"
              },
              setDisplaySleepEnabled = {
                args = {
                  {
                    name = "enable"
                  }
                },
                description = "Sets whether the display is allowed to sleep while the program is running.\n\nDisplay sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.",
                link = "https://love2d.org/wiki/love.window.setDisplaySleepEnabled",
                type = "function"
              },
              setFullscreen = {
                link = "https://love2d.org/wiki/love.window.setFullscreen",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "fullscreen"
                      }
                    },
                    description = "Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.\n\nIf fullscreen mode is entered and the window size doesn't match one of the monitor's display modes (in normal fullscreen mode) or the window size doesn't match the desktop size (in 'desktop' fullscreen mode), the window will be resized appropriately. The window will revert back to its original size again when fullscreen mode is exited using this function."
                  },
                  {
                    args = {
                      {
                        name = "fullscreen"
                      },
                      {
                        name = "fstype"
                      }
                    },
                    description = "Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.\n\nIf fullscreen mode is entered and the window size doesn't match one of the monitor's display modes (in normal fullscreen mode) or the window size doesn't match the desktop size (in 'desktop' fullscreen mode), the window will be resized appropriately. The window will revert back to its original size again when fullscreen mode is exited using this function."
                  }
                }
              },
              setIcon = {
                args = {
                  {
                    name = "imagedata"
                  }
                },
                description = "Sets the window icon until the game is quit. Not all operating systems support very large icon images.",
                link = "https://love2d.org/wiki/love.window.setIcon",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              setMode = {
                args = {
                  {
                    name = "width"
                  },
                  {
                    name = "height"
                  },
                  {
                    name = "flags"
                  }
                },
                description = "Sets the display mode and properties of the window.\n\nIf width or height is 0, setMode will use the width and height of the desktop.\n\nChanging the display mode may have side effects: for example, canvases will be cleared and values sent to shaders with Shader:send will be erased. Make sure to save the contents of canvases beforehand or re-draw to them afterward if you need to.",
                link = "https://love2d.org/wiki/love.window.setMode",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function"
              },
              setPosition = {
                args = {
                  {
                    name = "x"
                  },
                  {
                    name = "y"
                  },
                  {
                    name = "display"
                  }
                },
                description = "Sets the position of the window on the screen.\n\nThe window position is in the coordinate space of the specified display.",
                link = "https://love2d.org/wiki/love.window.setPosition",
                type = "function"
              },
              setTitle = {
                args = {
                  {
                    name = "title"
                  }
                },
                description = "Sets the window title.",
                link = "https://love2d.org/wiki/love.window.setTitle",
                type = "function"
              },
              showMessageBox = {
                link = "https://love2d.org/wiki/love.window.showMessageBox",
                returnTypes = {
                  {
                    type = "boolean"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "title"
                      },
                      {
                        name = "message"
                      },
                      {
                        displayName = "[type]",
                        name = "type"
                      },
                      {
                        displayName = "[attachtowindow]",
                        name = "attachtowindow"
                      }
                    },
                    description = "Displays a message box dialog above the love window. The message box contains a title, optional text, and buttons."
                  },
                  {
                    args = {
                      {
                        name = "title"
                      },
                      {
                        name = "message"
                      },
                      {
                        name = "buttonlist"
                      },
                      {
                        displayName = "[type]",
                        name = "type"
                      },
                      {
                        displayName = "[attachtowindow]",
                        name = "attachtowindow"
                      }
                    },
                    description = "Displays a message box dialog above the love window. The message box contains a title, optional text, and buttons."
                  }
                }
              },
              toPixels = {
                link = "https://love2d.org/wiki/love.window.toPixels",
                returnTypes = {
                  {
                    type = "number"
                  }
                },
                type = "function",
                variants = {
                  {
                    args = {
                      {
                        name = "value"
                      }
                    },
                    description = "Converts a number from density-independent units to pixels.\n\nThe pixel density inside the window might be greater (or smaller) than the \"size\" of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.toPixels(800) would return 1600 in that case.\n\nThis is used to convert coordinates from the size users are expecting them to display at onscreen to pixels. love.window.fromPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.\n\nMost LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units."
                  },
                  {
                    args = {
                      {
                        name = "x"
                      },
                      {
                        name = "y"
                      }
                    },
                    description = "Converts a number from density-independent units to pixels.\n\nThe pixel density inside the window might be greater (or smaller) than the \"size\" of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.toPixels(800) would return 1600 in that case.\n\nThis is used to convert coordinates from the size users are expecting them to display at onscreen to pixels. love.window.fromPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.\n\nMost LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units."
                  }
                }
              }
            },
            link = "https://love2d.org/wiki/love.window",
            type = "table"
          }
        },
        type = "table"
      }
    },
    type = "table"
  },
  namedTypes = {
    BezierCurve = {
      fields = {
        evaluate = {
          args = {
            {
              name = "self"
            },
            {
              name = "t"
            }
          },
          description = "Evaluate Bézier curve at parameter t. The parameter must be between 0 and 1 (inclusive).\n\nThis function can be used to move objects along paths or tween parameters. However it should not be used to render the curve, see BezierCurve:render for that purpose.",
          link = "https://love2d.org/wiki/BezierCurve:evaluate",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getControlPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "i"
            }
          },
          description = "Get coordinates of the i-th control point. Indices start with 1.",
          link = "https://love2d.org/wiki/BezierCurve:getControlPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getControlPointCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the number of control points in the Bézier curve.",
          link = "https://love2d.org/wiki/BezierCurve:getControlPointCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDegree = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get degree of the Bézier curve. The degree is equal to number-of-control-points - 1.",
          link = "https://love2d.org/wiki/BezierCurve:getDegree",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDerivative = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the derivative of the Bézier curve.\n\nThis function can be used to rotate sprites moving along a curve in the direction of the movement and compute the direction perpendicular to the curve at some parameter t.",
          link = "https://love2d.org/wiki/BezierCurve:getDerivative",
          returnTypes = {
            {
              name = "BezierCurve",
              type = "ref"
            }
          },
          type = "function"
        },
        getSegment = {
          args = {
            {
              name = "self"
            },
            {
              name = "startpoint"
            },
            {
              name = "endpoint"
            }
          },
          description = "Gets a BezierCurve that corresponds to the specified segment of this BezierCurve.",
          link = "https://love2d.org/wiki/BezierCurve:getSegment",
          returnTypes = {
            {
              name = "BezierCurve",
              type = "ref"
            }
          },
          type = "function"
        },
        insertControlPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              displayName = "[i]",
              name = "i"
            }
          },
          description = "Insert control point as the new i-th control point. Existing control points from i onwards are pushed back by 1. Indices start with 1. Negative indices wrap around: -1 is the last control point, -2 the one before the last, etc.",
          link = "https://love2d.org/wiki/BezierCurve:insertControlPoint",
          type = "function"
        },
        removeControlPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "index"
            }
          },
          description = "Removes the specified control point.",
          link = "https://love2d.org/wiki/BezierCurve:removeControlPoint",
          type = "function"
        },
        render = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[depth]",
              name = "depth"
            }
          },
          description = "Get a list of coordinates to be used with love.graphics.line.\n\nThis function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter.\n\nIf you are just interested to know the position on the curve given a parameter, use BezierCurve:evaluate.",
          link = "https://love2d.org/wiki/BezierCurve:render",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        renderSegment = {
          args = {
            {
              name = "self"
            },
            {
              name = "startpoint"
            },
            {
              name = "endpoint"
            },
            {
              displayName = "[depth]",
              name = "depth"
            }
          },
          description = "Get a list of coordinates on a specific part of the curve, to be used with love.graphics.line.\n\nThis function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter.\n\nIf you are just need to know the position on the curve given a parameter, use BezierCurve:evaluate.",
          link = "https://love2d.org/wiki/BezierCurve:renderSegment",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        rotate = {
          args = {
            {
              name = "self"
            },
            {
              name = "angle"
            },
            {
              displayName = "[ox]",
              name = "ox"
            },
            {
              displayName = "[oy]",
              name = "oy"
            }
          },
          description = "Rotate the Bézier curve by an angle.",
          link = "https://love2d.org/wiki/BezierCurve:rotate",
          type = "function"
        },
        scale = {
          args = {
            {
              name = "self"
            },
            {
              name = "s"
            },
            {
              displayName = "[ox]",
              name = "ox"
            },
            {
              displayName = "[oy]",
              name = "oy"
            }
          },
          description = "Scale the Bézier curve by a factor.",
          link = "https://love2d.org/wiki/BezierCurve:scale",
          type = "function"
        },
        setControlPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "i"
            },
            {
              name = "ox"
            },
            {
              name = "oy"
            }
          },
          description = "Set coordinates of the i-th control point. Indices start with 1.",
          link = "https://love2d.org/wiki/BezierCurve:setControlPoint",
          type = "function"
        },
        translate = {
          args = {
            {
              name = "self"
            },
            {
              name = "dx"
            },
            {
              name = "dy"
            }
          },
          description = "Move the Bézier curve by an offset.",
          link = "https://love2d.org/wiki/BezierCurve:translate",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Body = {
      fields = {
        applyAngularImpulse = {
          args = {
            {
              name = "self"
            },
            {
              name = "impulse"
            }
          },
          description = "Applies an angular impulse to a body. This makes a single, instantaneous addition to the body momentum.\n\nA body with with a larger mass will react less. The reaction does not depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.",
          link = "https://love2d.org/wiki/Body:applyAngularImpulse",
          type = "function"
        },
        applyForce = {
          link = "https://love2d.org/wiki/Body:applyForce",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "fx"
                },
                {
                  name = "fy"
                }
              },
              description = "Apply force to a Body.\n\nA force pushes a body in a direction. A body with with a larger mass will react less. The reaction also depends on how long a force is applied: since the force acts continuously over the entire timestep, a short timestep will only push the body for a short time. Thus forces are best used for many timesteps to give a continuous push to a body (like gravity). For a single push that is independent of timestep, it is better to use Body:applyLinearImpulse.\n\nIf the position to apply the force is not given, it will act on the center of mass of the body. The part of the force not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).\n\nNote that the force components and position must be given in world coordinates."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "fx"
                },
                {
                  name = "fy"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                }
              },
              description = "Apply force to a Body.\n\nA force pushes a body in a direction. A body with with a larger mass will react less. The reaction also depends on how long a force is applied: since the force acts continuously over the entire timestep, a short timestep will only push the body for a short time. Thus forces are best used for many timesteps to give a continuous push to a body (like gravity). For a single push that is independent of timestep, it is better to use Body:applyLinearImpulse.\n\nIf the position to apply the force is not given, it will act on the center of mass of the body. The part of the force not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).\n\nNote that the force components and position must be given in world coordinates."
            }
          }
        },
        applyLinearImpulse = {
          link = "https://love2d.org/wiki/Body:applyLinearImpulse",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "ix"
                },
                {
                  name = "iy"
                }
              },
              description = "Applies an impulse to a body. This makes a single, instantaneous addition to the body momentum.\n\nAn impulse pushes a body in a direction. A body with with a larger mass will react less. The reaction does not depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.\n\nIf the position to apply the impulse is not given, it will act on the center of mass of the body. The part of the impulse not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).\n\nNote that the impulse components and position must be given in world coordinates."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "ix"
                },
                {
                  name = "iy"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                }
              },
              description = "Applies an impulse to a body. This makes a single, instantaneous addition to the body momentum.\n\nAn impulse pushes a body in a direction. A body with with a larger mass will react less. The reaction does not depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.\n\nIf the position to apply the impulse is not given, it will act on the center of mass of the body. The part of the impulse not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).\n\nNote that the impulse components and position must be given in world coordinates."
            }
          }
        },
        applyTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "torque"
            }
          },
          description = "Apply torque to a body.\n\nTorque is like a force that will change the angular velocity (spin) of a body. The effect will depend on the rotational inertia a body has.",
          link = "https://love2d.org/wiki/Body:applyTorque",
          type = "function"
        },
        destroy = {
          args = {
            {
              name = "self"
            }
          },
          description = "Explicitly destroys the Body. When you don't have time to wait for garbage collection, this function may be used to free the object immediately, but note that an error will occur if you attempt to use the object after calling this function.",
          link = "https://love2d.org/wiki/Body:destroy",
          type = "function"
        },
        getAngle = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the angle of the body.\n\nThe angle is measured in radians. If you need to transform it to degrees, use math.deg.\n\nA value of 0 radians will mean \"looking to the right\". Although radians increase counter-clockwise, the y-axis points down so it becomes clockwise from our point of view.",
          link = "https://love2d.org/wiki/Body:getAngle",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getAngularDamping = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the Angular damping of the Body\n\nThe angular damping is the rate of decrease of the angular velocity over time: A spinning body with no damping and no external forces will continue spinning indefinitely. A spinning body with damping will gradually stop spinning.\n\nDamping is not the same as friction - they can be modelled together. However, only damping is provided by Box2D (and LÖVE).\n\nDamping parameters should be between 0 and infinity, with 0 meaning no damping, and infinity meaning full damping. Normally you will use a damping value between 0 and 0.1.",
          link = "https://love2d.org/wiki/Body:getAngularDamping",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getAngularVelocity = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the angular velocity of the Body.\n\nThe angular velocity is the rate of change of angle over time.\n\nIt is changed in World:update by applying torques, off centre forces/impulses, and angular damping. It can be set directly with Body:setAngularVelocity.\n\nIf you need the rate of change of position over time, use Body:getLinearVelocity.",
          link = "https://love2d.org/wiki/Body:getAngularVelocity",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getContactList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a list of all Contacts attached to the Body.",
          link = "https://love2d.org/wiki/Body:getContactList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getFixtureList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns a table with all fixtures.",
          link = "https://love2d.org/wiki/Body:getFixtureList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getGravityScale = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the gravity scale factor.",
          link = "https://love2d.org/wiki/Body:getGravityScale",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getInertia = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the rotational inertia of the body.\n\nThe rotational inertia is how hard is it to make the body spin.",
          link = "https://love2d.org/wiki/Body:getInertia",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns a table containing the Joints attached to this Body.",
          link = "https://love2d.org/wiki/Body:getJointList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getLinearDamping = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the linear damping of the Body.\n\nThe linear damping is the rate of decrease of the linear velocity over time. A moving body with no damping and no external forces will continue moving indefinitely, as is the case in space. A moving body with damping will gradually stop moving.\n\nDamping is not the same as friction - they can be modelled together. However, only damping is provided by Box2D (and LÖVE).",
          link = "https://love2d.org/wiki/Body:getLinearDamping",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLinearVelocity = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the linear velocity of the Body from its center of mass.\n\nThe linear velocity is the rate of change of position over time.\n\nIf you need the rate of change of angle over time, use Body:getAngularVelocity. If you need to get the linear velocity of a point different from the center of mass:\n\nBody:getLinearVelocityFromLocalPoint allows you to specify the point in local coordinates.\n\nBody:getLinearVelocityFromWorldPoint allows you to specify the point in world coordinates.",
          link = "https://love2d.org/wiki/Body:getLinearVelocity",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLinearVelocityFromLocalPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Get the linear velocity of a point on the body.\n\nThe linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning.\n\nThe point on the body must given in local coordinates. Use Body:getLinearVelocityFromWorldPoint to specify this with world coordinates.",
          link = "https://love2d.org/wiki/Body:getLinearVelocityFromLocalPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLinearVelocityFromWorldPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Get the linear velocity of a point on the body.\n\nThe linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning.\n\nThe point on the body must given in world coordinates. Use Body:getLinearVelocityFromLocalPoint to specify this with local coordinates.",
          link = "https://love2d.org/wiki/Body:getLinearVelocityFromWorldPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLocalCenter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the center of mass position in local coordinates.\n\nUse Body:getWorldCenter to get the center of mass in world coordinates.",
          link = "https://love2d.org/wiki/Body:getLocalCenter",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLocalPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "worldX"
            },
            {
              name = "worldY"
            }
          },
          description = "Transform a point from world coordinates to local coordinates.",
          link = "https://love2d.org/wiki/Body:getLocalPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLocalVector = {
          args = {
            {
              name = "self"
            },
            {
              name = "worldX"
            },
            {
              name = "worldY"
            }
          },
          description = "Transform a vector from world coordinates to local coordinates.",
          link = "https://love2d.org/wiki/Body:getLocalVector",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMass = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the mass of the body.",
          link = "https://love2d.org/wiki/Body:getMass",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMassData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the mass, its center, and the rotational inertia.",
          link = "https://love2d.org/wiki/Body:getMassData",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPosition = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the position of the body.\n\nNote that this may not be the center of mass of the body.",
          link = "https://love2d.org/wiki/Body:getPosition",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getType = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the type of the body.",
          link = "https://love2d.org/wiki/Body:getType",
          returnTypes = {
            {
              name = "BodyType",
              type = "ref"
            }
          },
          type = "function"
        },
        getUserData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the Lua value associated with this Body.",
          link = "https://love2d.org/wiki/Body:getUserData",
          returnTypes = {
            {
              name = "any",
              type = "ref"
            }
          },
          type = "function"
        },
        getWorld = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the World the body lives in.",
          link = "https://love2d.org/wiki/Body:getWorld",
          returnTypes = {
            {
              name = "World",
              type = "ref"
            }
          },
          type = "function"
        },
        getWorldCenter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the center of mass position in world coordinates.\n\nUse Body:getLocalCenter to get the center of mass in local coordinates.",
          link = "https://love2d.org/wiki/Body:getWorldCenter",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWorldPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "localX"
            },
            {
              name = "localY"
            }
          },
          description = "Transform a point from local coordinates to world coordinates.",
          link = "https://love2d.org/wiki/Body:getWorldPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWorldPoints = {
          args = {
            {
              name = "self"
            },
            {
              name = "x1"
            },
            {
              name = "y1"
            },
            {
              name = "x2"
            },
            {
              name = "y2"
            },
            {
              name = "..."
            }
          },
          description = "Transforms multiple points from local coordinates to world coordinates.",
          link = "https://love2d.org/wiki/Body:getWorldPoints",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWorldVector = {
          args = {
            {
              name = "self"
            },
            {
              name = "localX"
            },
            {
              name = "localY"
            }
          },
          description = "Transform a vector from local coordinates to world coordinates.",
          link = "https://love2d.org/wiki/Body:getWorldVector",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getX = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the x position of the body in world coordinates.",
          link = "https://love2d.org/wiki/Body:getX",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getY = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the y position of the body in world coordinates.",
          link = "https://love2d.org/wiki/Body:getY",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        isActive = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the body is actively used in the simulation.",
          link = "https://love2d.org/wiki/Body:isActive",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isAwake = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the sleep status of the body.",
          link = "https://love2d.org/wiki/Body:isAwake",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isBullet = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the bullet status of a body.\n\nThere are two methods to check for body collisions:\n\nat their location when the world is updated (default)\n\nusing continuous collision detection (CCD)\n\nThe default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly.\n\nNote that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.",
          link = "https://love2d.org/wiki/Body:isBullet",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isDestroyed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Body is destroyed. Destroyed bodies cannot be used.",
          link = "https://love2d.org/wiki/Body:isDestroyed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isFixedRotation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the body rotation is locked.",
          link = "https://love2d.org/wiki/Body:isFixedRotation",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isSleepingAllowed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the sleeping behaviour of the body.",
          link = "https://love2d.org/wiki/Body:isSleepingAllowed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        resetMassData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Resets the mass of the body by recalculating it from the mass properties of the fixtures.",
          link = "https://love2d.org/wiki/Body:resetMassData",
          type = "function"
        },
        setActive = {
          args = {
            {
              name = "self"
            },
            {
              name = "active"
            }
          },
          description = "Sets whether the body is active in the world.\n\nAn inactive body does not take part in the simulation. It will not move or cause any collisions.",
          link = "https://love2d.org/wiki/Body:setActive",
          type = "function"
        },
        setAngle = {
          args = {
            {
              name = "self"
            },
            {
              name = "angle"
            }
          },
          description = "Set the angle of the body.\n\nThe angle is measured in radians. If you need to transform it from degrees, use math.rad.\n\nA value of 0 radians will mean \"looking to the right\". Although radians increase counter-clockwise, the y-axis points down so it becomes clockwise from our point of view.\n\nIt is possible to cause a collision with another body by changing its angle.",
          link = "https://love2d.org/wiki/Body:setAngle",
          type = "function"
        },
        setAngularDamping = {
          args = {
            {
              name = "self"
            },
            {
              name = "damping"
            }
          },
          description = "Sets the angular damping of a Body.\n\nSee Body:getAngularDamping for a definition of angular damping.\n\nAngular damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will look unrealistic.",
          link = "https://love2d.org/wiki/Body:setAngularDamping",
          type = "function"
        },
        setAngularVelocity = {
          args = {
            {
              name = "self"
            },
            {
              name = "w"
            }
          },
          description = "Sets the angular velocity of a Body.\n\nThe angular velocity is the rate of change of angle over time.\n\nThis function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost.",
          link = "https://love2d.org/wiki/Body:setAngularVelocity",
          type = "function"
        },
        setAwake = {
          args = {
            {
              name = "self"
            },
            {
              name = "awake"
            }
          },
          description = "Wakes the body up or puts it to sleep.",
          link = "https://love2d.org/wiki/Body:setAwake",
          type = "function"
        },
        setBullet = {
          args = {
            {
              name = "self"
            },
            {
              name = "status"
            }
          },
          description = "Set the bullet status of a body.\n\nThere are two methods to check for body collisions:\n\nat their location when the world is updated (default)\n\nusing continuous collision detection (CCD)\n\nThe default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly.\n\nNote that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.",
          link = "https://love2d.org/wiki/Body:setBullet",
          type = "function"
        },
        setFixedRotation = {
          args = {
            {
              name = "self"
            },
            {
              name = "fixed"
            }
          },
          description = "Set whether a body has fixed rotation.\n\nBodies with fixed rotation don't vary the speed at which they rotate.",
          link = "https://love2d.org/wiki/Body:setFixedRotation",
          type = "function"
        },
        setGravityScale = {
          args = {
            {
              name = "self"
            },
            {
              name = "scale"
            }
          },
          description = "Sets a new gravity scale factor for the body.",
          link = "https://love2d.org/wiki/Body:setGravityScale",
          type = "function"
        },
        setInertia = {
          args = {
            {
              name = "self"
            },
            {
              name = "inertia"
            }
          },
          description = "Set the inertia of a body.",
          link = "https://love2d.org/wiki/Body:setInertia",
          type = "function"
        },
        setLinearDamping = {
          args = {
            {
              name = "self"
            },
            {
              name = "ld"
            }
          },
          description = "Sets the linear damping of a Body\n\nSee Body:getLinearDamping for a definition of linear damping.\n\nLinear damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will make the objects look \"floaty\".",
          link = "https://love2d.org/wiki/Body:setLinearDamping",
          type = "function"
        },
        setLinearVelocity = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets a new linear velocity for the Body.\n\nThis function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost.",
          link = "https://love2d.org/wiki/Body:setLinearVelocity",
          type = "function"
        },
        setMass = {
          args = {
            {
              name = "self"
            },
            {
              name = "mass"
            }
          },
          description = "Sets the mass in kilograms.",
          link = "https://love2d.org/wiki/Body:setMass",
          type = "function"
        },
        setMassData = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "mass"
            },
            {
              name = "inertia"
            }
          },
          description = "Overrides the calculated mass data.",
          link = "https://love2d.org/wiki/Body:setMassData",
          type = "function"
        },
        setPosition = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Set the position of the body.\n\nNote that this may not be the center of mass of the body.",
          link = "https://love2d.org/wiki/Body:setPosition",
          type = "function"
        },
        setSleepingAllowed = {
          args = {
            {
              name = "self"
            },
            {
              name = "allowed"
            }
          },
          description = "Sets the sleeping behaviour of the body.",
          link = "https://love2d.org/wiki/Body:setSleepingAllowed",
          type = "function"
        },
        setType = {
          args = {
            {
              name = "self"
            },
            {
              name = "type"
            }
          },
          description = "Sets a new body type.",
          link = "https://love2d.org/wiki/Body:setType",
          type = "function"
        },
        setUserData = {
          args = {
            {
              name = "self"
            },
            {
              name = "value"
            }
          },
          description = "Associates a Lua value with the Body.\n\nTo delete the reference, explicitly pass nil.",
          link = "https://love2d.org/wiki/Body:setUserData",
          type = "function"
        },
        setX = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            }
          },
          description = "Set the x position of the body.",
          link = "https://love2d.org/wiki/Body:setX",
          type = "function"
        },
        setY = {
          args = {
            {
              name = "self"
            },
            {
              name = "y"
            }
          },
          description = "Set the y position of the body.",
          link = "https://love2d.org/wiki/Body:setY",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Canvas = {
      fields = {
        getDimensions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width and height of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the filter mode of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getFilter",
          returnTypes = {
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFormat = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the texture format of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getFormat",
          returnTypes = {
            {
              name = "CanvasFormat",
              type = "ref"
            }
          },
          type = "function"
        },
        getHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the height of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMSAA = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of multisample antialiasing (MSAA) samples used when drawing to the Canvas.\n\nThis may be different than the number used as an argument to love.graphics.newCanvas if the system running LÖVE doesn't support that number.",
          link = "https://love2d.org/wiki/Canvas:getMSAA",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWidth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWrap = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the wrapping properties of a Canvas.\n\nThis function returns the currently set horizontal and vertical wrapping modes for the Canvas.",
          link = "https://love2d.org/wiki/Canvas:getWrap",
          returnTypes = {
            {
              name = "WrapMode",
              type = "ref"
            },
            {
              name = "WrapMode",
              type = "ref"
            }
          },
          type = "function"
        },
        newImageData = {
          link = "https://love2d.org/wiki/Canvas:newImageData",
          returnTypes = {
            {
              name = "ImageData",
              type = "ref"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Generates ImageData from the contents of the Canvas."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  name = "width"
                },
                {
                  name = "height"
                }
              },
              description = "Generates ImageData from the contents of the Canvas."
            }
          }
        },
        renderTo = {
          args = {
            {
              name = "self"
            },
            {
              name = "func"
            }
          },
          description = "Render to the Canvas using a function.",
          link = "https://love2d.org/wiki/Canvas:renderTo",
          type = "function"
        },
        setFilter = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[mag]",
              name = "mag"
            },
            {
              displayName = "[anisotropy]",
              name = "anisotropy"
            }
          },
          description = "Sets the filter of the Canvas.",
          link = "https://love2d.org/wiki/Canvas:setFilter",
          type = "function"
        },
        setWrap = {
          args = {
            {
              name = "self"
            },
            {
              name = "horizontal"
            },
            {
              displayName = "[vertical]",
              name = "vertical"
            }
          },
          description = "Sets the wrapping properties of a Canvas.\n\nThis function sets the way the edges of a Canvas are treated if it is scaled or rotated. If the WrapMode is set to \"clamp\", the edge will not be interpolated. If set to \"repeat\", the edge will be interpolated with the pixels on the opposing side of the framebuffer.",
          link = "https://love2d.org/wiki/Canvas:setWrap",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Texture",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    ChainShape = {
      fields = {
        getChildEdge = {
          args = {
            {
              name = "self"
            },
            {
              name = "index"
            }
          },
          description = "Returns a child of the shape as an EdgeShape.",
          link = "https://love2d.org/wiki/ChainShape:getChildEdge",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getNextVertex = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[x]",
              name = "x"
            },
            {
              displayName = "[y]",
              name = "y"
            }
          },
          description = "Gets the vertex that establishes a connection to the next shape.\n\nSetting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/ChainShape:getNextVertex",
          type = "function"
        },
        getPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "index"
            }
          },
          description = "Returns a point of the shape.",
          link = "https://love2d.org/wiki/ChainShape:getPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPoints = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns all points of the shape.",
          link = "https://love2d.org/wiki/ChainShape:getPoints",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPreviousVertex = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the vertex that establishes a connection to the previous shape.\n\nSetting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/ChainShape:getPreviousVertex",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getVertexCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of vertices the shape has.",
          link = "https://love2d.org/wiki/ChainShape:getVertexCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setNextVertex = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets a vertex that establishes a connection to the next shape.\n\nThis can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/ChainShape:setNextVertex",
          type = "function"
        },
        setPreviousVertex = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets a vertex that establishes a connection to the previous shape.\n\nThis can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/ChainShape:setPreviousVertex",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Shape",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Channel = {
      fields = {
        clear = {
          args = {
            {
              name = "self"
            }
          },
          description = "Clears all the messages in the Channel queue.",
          link = "https://love2d.org/wiki/Channel:clear",
          type = "function"
        },
        demand = {
          args = {
            {
              name = "self"
            }
          },
          description = "Retrieves the value of a Channel message and removes it from the message queue.\n\nIt waits until a message is in the queue then returns the message value.",
          link = "https://love2d.org/wiki/Channel:demand",
          returnTypes = {
            {
              name = "Variant",
              type = "ref"
            }
          },
          type = "function"
        },
        getCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Retrieves the number of messages in the thread Channel queue.",
          link = "https://love2d.org/wiki/Channel:getCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        peek = {
          args = {
            {
              name = "self"
            }
          },
          description = "Retrieves the value of a Channel message, but leaves it in the queue.\n\nIt returns nil if there's no message in the queue.",
          link = "https://love2d.org/wiki/Channel:peek",
          returnTypes = {
            {
              name = "Variant",
              type = "ref"
            }
          },
          type = "function"
        },
        performAtomic = {
          args = {
            {
              name = "self"
            },
            {
              name = "func"
            },
            {
              name = "arg1"
            },
            {
              name = "..."
            }
          },
          description = "Executes the specified function atomically with respect to this Channel.\n\nCalling multiple methods in a row on the same Channel is often useful. However if multiple Threads are calling this Channel's methods at the same time, the different calls on each Thread might end up interleaved (e.g. one or more of the second thread's calls may happen in between the first thread's calls.)\n\nThis method avoids that issue by making sure the Thread calling the method has exclusive access to the Channel until the specified function has returned.",
          link = "https://love2d.org/wiki/Channel:performAtomic",
          returnTypes = {
            {
              name = "any",
              type = "ref"
            },
            {
              name = "any",
              type = "ref"
            }
          },
          type = "function"
        },
        pop = {
          args = {
            {
              name = "self"
            }
          },
          description = "Retrieves the value of a Channel message and removes it from the message queue.\n\nIt returns nil if there are no messages in the queue.",
          link = "https://love2d.org/wiki/Channel:pop",
          returnTypes = {
            {
              name = "Variant",
              type = "ref"
            }
          },
          type = "function"
        },
        push = {
          args = {
            {
              name = "self"
            },
            {
              name = "value"
            }
          },
          description = "Send a message to the thread Channel.\n\nSee Variant for the list of supported types.",
          link = "https://love2d.org/wiki/Channel:push",
          type = "function"
        },
        supply = {
          args = {
            {
              name = "self"
            },
            {
              name = "value"
            }
          },
          description = "Send a message to the thread Channel and wait for a thread to accept it.\n\nSee Variant for the list of supported types.",
          link = "https://love2d.org/wiki/Channel:supply",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    CircleShape = {
      fields = {
        getPoint = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the center point of the circle shape.",
          link = "https://love2d.org/wiki/CircleShape:getPoint",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRadius = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the radius of the circle shape.",
          link = "https://love2d.org/wiki/CircleShape:getRadius",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets the location of the center of the circle shape.",
          link = "https://love2d.org/wiki/CircleShape:setPoint",
          type = "function"
        },
        setRadius = {
          args = {
            {
              name = "self"
            },
            {
              name = "radius"
            }
          },
          description = "Sets the radius of the circle.",
          link = "https://love2d.org/wiki/CircleShape:setRadius",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Shape",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    CompressedData = {
      fields = {
        getFormat = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the compression format of the CompressedData.",
          link = "https://love2d.org/wiki/CompressedData:getFormat",
          returnTypes = {
            {
              name = "CompressedDataFormat",
              type = "ref"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Data",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    CompressedImageData = {
      fields = {
        getDimensions = {
          link = "https://love2d.org/wiki/CompressedImageData:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the width and height of the CompressedImageData."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "level"
                }
              },
              description = "Gets the width and height of the CompressedImageData."
            }
          }
        },
        getFormat = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the format of the CompressedImageData.",
          link = "https://love2d.org/wiki/CompressedImageData:getFormat",
          returnTypes = {
            {
              name = "CompressedImageFormat",
              type = "ref"
            }
          },
          type = "function"
        },
        getHeight = {
          link = "https://love2d.org/wiki/CompressedImageData:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the height of the CompressedImageData."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "level"
                }
              },
              description = "Gets the height of the CompressedImageData."
            }
          }
        },
        getMipmapCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of mipmap levels in the CompressedImageData. The base mipmap level (original image) is included in the count.",
          link = "https://love2d.org/wiki/CompressedImageData:getMipmapCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWidth = {
          link = "https://love2d.org/wiki/CompressedImageData:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the width of the CompressedImageData."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "level"
                }
              },
              description = "Gets the width of the CompressedImageData."
            }
          }
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Data",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Contact = {
      fields = {
        getFixtures = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the two Fixtures that hold the shapes that are in contact.",
          link = "https://love2d.org/wiki/Contact:getFixtures",
          returnTypes = {
            {
              name = "Fixture",
              type = "ref"
            },
            {
              name = "Fixture",
              type = "ref"
            }
          },
          type = "function"
        },
        getFriction = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the friction between two shapes that are in contact.",
          link = "https://love2d.org/wiki/Contact:getFriction",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getNormal = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the normal vector between two shapes that are in contact.\n\nThis function returns the coordinates of a unit vector that points from the first shape to the second.",
          link = "https://love2d.org/wiki/Contact:getNormal",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPositions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the contact points of the two colliding fixtures. There can be one or two points.",
          link = "https://love2d.org/wiki/Contact:getPositions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRestitution = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the restitution between two shapes that are in contact.",
          link = "https://love2d.org/wiki/Contact:getRestitution",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        isEnabled = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the contact is enabled. The collision will be ignored if a contact gets disabled in the preSolve callback.",
          link = "https://love2d.org/wiki/Contact:isEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isTouching = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the two colliding fixtures are touching each other.",
          link = "https://love2d.org/wiki/Contact:isTouching",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        resetFriction = {
          args = {
            {
              name = "self"
            }
          },
          description = "Resets the contact friction to the mixture value of both fixtures.",
          link = "https://love2d.org/wiki/Contact:resetFriction",
          type = "function"
        },
        resetRestitution = {
          args = {
            {
              name = "self"
            }
          },
          description = "Resets the contact restitution to the mixture value of both fixtures.",
          link = "https://love2d.org/wiki/Contact:resetRestitution",
          type = "function"
        },
        setEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enabled"
            }
          },
          description = "Enables or disables the contact.",
          link = "https://love2d.org/wiki/Contact:setEnabled",
          type = "function"
        },
        setFriction = {
          args = {
            {
              name = "self"
            },
            {
              name = "friction"
            }
          },
          description = "Sets the contact friction.",
          link = "https://love2d.org/wiki/Contact:setFriction",
          type = "function"
        },
        setRestitution = {
          args = {
            {
              name = "self"
            },
            {
              name = "restitution"
            }
          },
          description = "Sets the contact restitution.",
          link = "https://love2d.org/wiki/Contact:setRestitution",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Cursor = {
      fields = {
        getType = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the type of the Cursor.",
          link = "https://love2d.org/wiki/Cursor:getType",
          returnTypes = {
            {
              name = "CursorType",
              type = "ref"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Data = {
      fields = {
        getPointer = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a pointer to the Data.",
          link = "https://love2d.org/wiki/Data:getPointer",
          returnTypes = {
            {
              name = "light userdata",
              type = "ref"
            }
          },
          type = "function"
        },
        getSize = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the size of the Data.",
          link = "https://love2d.org/wiki/Data:getSize",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getString = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the full Data as a string.",
          link = "https://love2d.org/wiki/Data:getString",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Decoder = {
      fields = {
        getBitDepth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of bits per sample.",
          link = "https://love2d.org/wiki/Decoder:getBitDepth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getChannels = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of channels in the stream.",
          link = "https://love2d.org/wiki/Decoder:getChannels",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDuration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the duration of the sound file. It may not always be sample-accurate, and it may return -1 if the duration cannot be determined at all.",
          link = "https://love2d.org/wiki/Decoder:getDuration",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSampleRate = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the sample rate of the Decoder.",
          link = "https://love2d.org/wiki/Decoder:getSampleRate",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    DistanceJoint = {
      fields = {
        getDampingRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the damping ratio.",
          link = "https://love2d.org/wiki/DistanceJoint:getDampingRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFrequency = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the response speed.",
          link = "https://love2d.org/wiki/DistanceJoint:getFrequency",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLength = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the equilibrium distance between the two Bodies.",
          link = "https://love2d.org/wiki/DistanceJoint:getLength",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setDampingRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "Sets the damping ratio.",
          link = "https://love2d.org/wiki/DistanceJoint:setDampingRatio",
          type = "function"
        },
        setFrequency = {
          args = {
            {
              name = "self"
            },
            {
              name = "Hz"
            }
          },
          description = "Sets the response speed.",
          link = "https://love2d.org/wiki/DistanceJoint:setFrequency",
          type = "function"
        },
        setLength = {
          args = {
            {
              name = "self"
            },
            {
              name = "l"
            }
          },
          description = "Sets the equilibrium distance between the two Bodies.",
          link = "https://love2d.org/wiki/DistanceJoint:setLength",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Drawable = {
      fields = {},
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    EdgeShape = {
      fields = {
        getNextVertex = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the vertex that establishes a connection to the next shape.\n\nSetting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/EdgeShape:getNextVertex",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPoints = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the local coordinates of the edge points.",
          link = "https://love2d.org/wiki/EdgeShape:getPoints",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPreviousVertex = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the vertex that establishes a connection to the previous shape.\n\nSetting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/EdgeShape:getPreviousVertex",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        setNextVertex = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets a vertex that establishes a connection to the next shape.\n\nThis can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/EdgeShape:setNextVertex",
          type = "function"
        },
        setPreviousVertex = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets a vertex that establishes a connection to the previous shape.\n\nThis can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.",
          link = "https://love2d.org/wiki/EdgeShape:setPreviousVertex",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Shape",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    File = {
      fields = {
        close = {
          args = {
            {
              name = "self"
            }
          },
          description = "Closes a file.",
          link = "https://love2d.org/wiki/File:close",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        flush = {
          args = {
            {
              name = "self"
            }
          },
          description = "Flushes any buffered written data in the file to the disk.",
          link = "https://love2d.org/wiki/File:flush",
          returnTypes = {
            {
              type = "boolean"
            },
            {
              type = "string"
            }
          },
          type = "function"
        },
        getBuffer = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the buffer mode of a file.",
          link = "https://love2d.org/wiki/File:getBuffer",
          returnTypes = {
            {
              name = "BufferMode",
              type = "ref"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilename = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the filename that the File object was created with. If the file object originated from the love.filedropped callback, the filename will be the full platform-dependent file path.",
          link = "https://love2d.org/wiki/File:getFilename",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        getMode = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the FileMode the file has been opened with.",
          link = "https://love2d.org/wiki/File:getMode",
          returnTypes = {
            {
              name = "FileMode",
              type = "ref"
            }
          },
          type = "function"
        },
        getSize = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the file size.",
          link = "https://love2d.org/wiki/File:getSize",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        isEOF = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether end-of-file has been reached.",
          link = "https://love2d.org/wiki/File:isEOF",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isOpen = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the file is open.",
          link = "https://love2d.org/wiki/File:isOpen",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        lines = {
          args = {
            {
              name = "self"
            }
          },
          description = "Iterate over all the lines in a file",
          link = "https://love2d.org/wiki/File:lines",
          returnTypes = {
            {
              type = "function"
            }
          },
          type = "function"
        },
        open = {
          args = {
            {
              name = "self"
            },
            {
              name = "mode"
            }
          },
          description = "Open the file for write, read or append.\n\nIf you are getting the error message \"Could not set write directory\", try setting the save directory. This is done either with love.filesystem.setIdentity or by setting the identity field in love.conf.",
          link = "https://love2d.org/wiki/File:open",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        read = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[bytes]",
              name = "bytes"
            }
          },
          description = "Read a number of bytes from a file.",
          link = "https://love2d.org/wiki/File:read",
          returnTypes = {
            {
              type = "string"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        seek = {
          args = {
            {
              name = "self"
            },
            {
              name = "position"
            }
          },
          description = "Seek to a position in a file.",
          link = "https://love2d.org/wiki/File:seek",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setBuffer = {
          args = {
            {
              name = "self"
            },
            {
              name = "mode"
            },
            {
              displayName = "[size]",
              name = "size"
            }
          },
          description = "Sets the buffer mode for a file opened for writing or appending. Files with buffering enabled will not write data to the disk until the buffer size limit is reached, depending on the buffer mode.",
          link = "https://love2d.org/wiki/File:setBuffer",
          returnTypes = {
            {
              type = "boolean"
            },
            {
              type = "string"
            }
          },
          type = "function"
        },
        tell = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the position in the file.",
          link = "https://love2d.org/wiki/File:tell",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        write = {
          args = {
            {
              name = "self"
            },
            {
              name = "data"
            },
            {
              displayName = "[size]",
              name = "size"
            }
          },
          description = "Write data to a file.",
          link = "https://love2d.org/wiki/File:write",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    FileData = {
      fields = {
        getExtension = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the extension of the FileData.",
          link = "https://love2d.org/wiki/FileData:getExtension",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        getFilename = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the filename of the FileData.",
          link = "https://love2d.org/wiki/FileData:getFilename",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Data",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Fixture = {
      fields = {
        destroy = {
          args = {
            {
              name = "self"
            }
          },
          description = "Destroys the fixture",
          link = "https://love2d.org/wiki/Fixture:destroy",
          type = "function"
        },
        getBody = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the body to which the fixture is attached.",
          link = "https://love2d.org/wiki/Fixture:getBody",
          returnTypes = {
            {
              name = "Body",
              type = "ref"
            }
          },
          type = "function"
        },
        getBoundingBox = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[index]",
              name = "index"
            }
          },
          description = "Returns the points of the fixture bounding box. In case the fixture has multiple children a 1-based index can be specified. For example, a fixture will have multiple children with a chain shape.",
          link = "https://love2d.org/wiki/Fixture:getBoundingBox",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getCategory = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the categories the fixture belongs to.",
          link = "https://love2d.org/wiki/Fixture:getCategory",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDensity = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the density of the fixture.",
          link = "https://love2d.org/wiki/Fixture:getDensity",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilterData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the filter data of the fixture. Categories and masks are encoded as the bits of a 16-bit integer.",
          link = "https://love2d.org/wiki/Fixture:getFilterData",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFriction = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the friction of the fixture.",
          link = "https://love2d.org/wiki/Fixture:getFriction",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getGroupIndex = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group.\n\nThe groups range from -32768 to 32767.",
          link = "https://love2d.org/wiki/Fixture:getGroupIndex",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMask = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the category mask of the fixture.",
          link = "https://love2d.org/wiki/Fixture:getMask",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMassData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the mass, its center and the rotational inertia.",
          link = "https://love2d.org/wiki/Fixture:getMassData",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRestitution = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the restitution of the fixture.",
          link = "https://love2d.org/wiki/Fixture:getRestitution",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getShape = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the shape of the fixture. This shape is a reference to the actual data used in the simulation. It's possible to change its values between timesteps.\n\nDo not call any functions on this shape after the parent fixture has been destroyed. This shape will point to an invalid memory address and likely cause crashes if you interact further with it.",
          link = "https://love2d.org/wiki/Fixture:getShape",
          returnTypes = {
            {
              name = "Shape",
              type = "ref"
            }
          },
          type = "function"
        },
        getUserData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the Lua value associated with this fixture.\n\nUse this function in one thread only.",
          link = "https://love2d.org/wiki/Fixture:getUserData",
          returnTypes = {
            {
              name = "any",
              type = "ref"
            }
          },
          type = "function"
        },
        isDestroyed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Fixture is destroyed. Destroyed fixtures cannot be used.",
          link = "https://love2d.org/wiki/Fixture:isDestroyed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isSensor = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the fixture is a sensor.",
          link = "https://love2d.org/wiki/Fixture:isSensor",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        rayCast = {
          args = {
            {
              name = "self"
            },
            {
              name = "x1"
            },
            {
              name = "y1"
            },
            {
              name = "x2"
            },
            {
              name = "y1"
            },
            {
              name = "maxFraction"
            },
            {
              displayName = "[childIndex]",
              name = "childIndex"
            }
          },
          description = "Casts a ray against the shape of the fixture and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned.\n\nThe ray starts on the first point of the input line and goes towards the second point of the line. The fourth argument is the maximum distance the ray is going to travel as a scale factor of the input line length.\n\nThe childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children.\n\nThe world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point.\n\nhitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction",
          link = "https://love2d.org/wiki/Fixture:rayCast",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        setCategory = {
          args = {
            {
              name = "self"
            },
            {
              name = "category1"
            },
            {
              name = "category2"
            },
            {
              name = "..."
            }
          },
          description = "Sets the categories the fixture belongs to. There can be up to 16 categories represented as a number from 1 to 16.",
          link = "https://love2d.org/wiki/Fixture:setCategory",
          type = "function"
        },
        setDensity = {
          args = {
            {
              name = "self"
            },
            {
              name = "density"
            }
          },
          description = "Sets the density of the fixture. Call Body:resetMassData if this needs to take effect immediately.",
          link = "https://love2d.org/wiki/Fixture:setDensity",
          type = "function"
        },
        setFilterData = {
          args = {
            {
              name = "self"
            },
            {
              name = "categories"
            },
            {
              name = "mask"
            },
            {
              name = "group"
            }
          },
          description = "Sets the filter data of the fixture.\n\nGroups, categories, and mask can be used to define the collision behaviour of the fixture.\n\nIf two fixtures are in the same group they either always collide if the group is positive, or never collide if it's negative. If the group is zero or they do not match, then the contact filter checks if the fixtures select a category of the other fixture with their masks. The fixtures do not collide if that's not the case. If they do have each other's categories selected, the return value of the custom contact filter will be used. They always collide if none was set.\n\nThere can be up to 16 categories. Categories and masks are encoded as the bits of a 16-bit integer.",
          link = "https://love2d.org/wiki/Fixture:setFilterData",
          type = "function"
        },
        setFriction = {
          args = {
            {
              name = "self"
            },
            {
              name = "friction"
            }
          },
          description = "Sets the friction of the fixture.",
          link = "https://love2d.org/wiki/Fixture:setFriction",
          type = "function"
        },
        setGroupIndex = {
          args = {
            {
              name = "self"
            },
            {
              name = "group"
            }
          },
          description = "Sets the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group.\n\nThe groups range from -32768 to 32767.",
          link = "https://love2d.org/wiki/Fixture:setGroupIndex",
          type = "function"
        },
        setMask = {
          args = {
            {
              name = "self"
            },
            {
              name = "mask1"
            },
            {
              name = "mask2"
            },
            {
              name = "..."
            }
          },
          description = "Sets the category mask of the fixture. There can be up to 16 categories represented as a number from 1 to 16.\n\nThis fixture will collide with the fixtures that are in the selected categories if the other fixture also has a category of this fixture selected.",
          link = "https://love2d.org/wiki/Fixture:setMask",
          type = "function"
        },
        setRestitution = {
          args = {
            {
              name = "self"
            },
            {
              name = "restitution"
            }
          },
          description = "Sets the restitution of the fixture.",
          link = "https://love2d.org/wiki/Fixture:setRestitution",
          type = "function"
        },
        setSensor = {
          args = {
            {
              name = "self"
            },
            {
              name = "sensor"
            }
          },
          description = "Sets whether the fixture should act as a sensor.\n\nSensor do not produce collisions responses, but the begin and end callbacks will still be called for this fixture.",
          link = "https://love2d.org/wiki/Fixture:setSensor",
          type = "function"
        },
        setUserData = {
          args = {
            {
              name = "self"
            },
            {
              name = "value"
            }
          },
          description = "Associates a Lua value with the fixture.\n\nUse this function in one thread only.",
          link = "https://love2d.org/wiki/Fixture:setUserData",
          type = "function"
        },
        testPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Checks if a point is inside the shape of the fixture.",
          link = "https://love2d.org/wiki/Fixture:testPoint",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Font = {
      fields = {
        getAscent = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the ascent of the Font. The ascent spans the distance between the baseline and the top of the glyph that reaches farthest from the baseline.",
          link = "https://love2d.org/wiki/Font:getAscent",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getBaseline = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the baseline of the Font. Most scripts share the notion of a baseline: an imaginary horizontal line on which characters rest. In some scripts, parts of glyphs lie below the baseline.",
          link = "https://love2d.org/wiki/Font:getBaseline",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDescent = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the descent of the Font. The descent spans the distance between the baseline and the lowest descending glyph in a typeface.",
          link = "https://love2d.org/wiki/Font:getDescent",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the filter mode for a font.",
          link = "https://love2d.org/wiki/Font:getFilter",
          returnTypes = {
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the height of the Font. The height of the font is the size including any spacing; the height which it will need.",
          link = "https://love2d.org/wiki/Font:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLineHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the line height. This will be the value previously set by Font:setLineHeight, or 1.0 by default.",
          link = "https://love2d.org/wiki/Font:getLineHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWidth = {
          args = {
            {
              name = "self"
            },
            {
              name = "line"
            }
          },
          description = "Determines the horizontal size a line of text needs. Does not support line-breaks.",
          link = "https://love2d.org/wiki/Font:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWrap = {
          args = {
            {
              name = "self"
            },
            {
              name = "text"
            },
            {
              name = "wraplimit"
            }
          },
          description = "Gets formatting information for text, given a wrap limit.\n\nThis function accounts for newlines correctly (i.e. '\\n').",
          link = "https://love2d.org/wiki/Font:getWrap",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "table"
            }
          },
          type = "function"
        },
        hasGlyphs = {
          link = "https://love2d.org/wiki/Font:hasGlyphs",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "character"
                }
              },
              description = "Gets whether the font can render a particular character."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "codepoint"
                }
              },
              description = "Gets whether the font can render a particular character."
            }
          }
        },
        setFallbacks = {
          args = {
            {
              name = "self"
            },
            {
              name = "fallbackfont1"
            },
            {
              name = "..."
            }
          },
          description = "Sets the fallback fonts. When the Font doesn't contain a glyph, it will substitute the glyph from the next subsequent fallback Fonts. This is akin to setting a \"font stack\" in Cascading Style Sheets (CSS).",
          link = "https://love2d.org/wiki/Font:setFallbacks",
          type = "function"
        },
        setFilter = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[mag]",
              name = "mag"
            },
            {
              displayName = "[anisotropy]",
              name = "anisotropy"
            }
          },
          description = "Sets the filter mode for a font.",
          link = "https://love2d.org/wiki/Font:setFilter",
          type = "function"
        },
        setLineHeight = {
          args = {
            {
              name = "self"
            },
            {
              name = "height"
            }
          },
          description = "Sets the line height. When rendering the font in lines the actual height will be determined by the line height multiplied by the height of the font. The default is 1.0.",
          link = "https://love2d.org/wiki/Font:setLineHeight",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    FrictionJoint = {
      fields = {
        getMaxForce = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum friction force in Newtons.",
          link = "https://love2d.org/wiki/FrictionJoint:getMaxForce",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxTorque = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum friction torque in Newton-meters.",
          link = "https://love2d.org/wiki/FrictionJoint:getMaxTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setMaxForce = {
          args = {
            {
              name = "self"
            },
            {
              name = "maxForce"
            }
          },
          description = "Sets the maximum friction force in Newtons.",
          link = "https://love2d.org/wiki/FrictionJoint:setMaxForce",
          type = "function"
        },
        setMaxTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "torque"
            }
          },
          description = "Sets the maximum friction torque in Newton-meters.",
          link = "https://love2d.org/wiki/FrictionJoint:setMaxTorque",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    GearJoint = {
      fields = {
        getJoints = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the Joints connected by this GearJoint.",
          link = "https://love2d.org/wiki/GearJoint:getJoints",
          returnTypes = {
            {
              name = "Joint",
              type = "ref"
            },
            {
              name = "Joint",
              type = "ref"
            }
          },
          type = "function"
        },
        getRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the ratio of a gear joint.",
          link = "https://love2d.org/wiki/GearJoint:getRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "Set the ratio of a gear joint.",
          link = "https://love2d.org/wiki/GearJoint:setRatio",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Image = {
      fields = {
        getData = {
          link = "https://love2d.org/wiki/Image:getData",
          returnTypes = {
            {
              name = "ImageData",
              type = "ref"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the original ImageData or CompressedImageData used to create the Image.\n\nAll Images keep a reference to the Data that was used to create the Image. The Data is used to refresh the Image when love.window.setMode or Image:refresh is called."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the original ImageData or CompressedImageData used to create the Image.\n\nAll Images keep a reference to the Data that was used to create the Image. The Data is used to refresh the Image when love.window.setMode or Image:refresh is called."
            }
          }
        },
        getDimensions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width and height of the Image.",
          link = "https://love2d.org/wiki/Image:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the filter mode for an image.",
          link = "https://love2d.org/wiki/Image:getFilter",
          returnTypes = {
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              name = "FilterMode",
              type = "ref"
            }
          },
          type = "function"
        },
        getFlags = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the flags used when the image was created.",
          link = "https://love2d.org/wiki/Image:getFlags",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the height of the Image.",
          link = "https://love2d.org/wiki/Image:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMipmapFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the mipmap filter mode for an Image.",
          link = "https://love2d.org/wiki/Image:getMipmapFilter",
          returnTypes = {
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWidth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width of the Image.",
          link = "https://love2d.org/wiki/Image:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWrap = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the wrapping properties of an Image.\n\nThis function returns the currently set horizontal and vertical wrapping modes for the image.",
          link = "https://love2d.org/wiki/Image:getWrap",
          returnTypes = {
            {
              name = "WrapMode",
              type = "ref"
            },
            {
              name = "WrapMode",
              type = "ref"
            }
          },
          type = "function"
        },
        refresh = {
          link = "https://love2d.org/wiki/Image:refresh",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Reloads the Image's contents from the ImageData or CompressedImageData used to create the image."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  name = "width"
                },
                {
                  name = "height"
                }
              },
              description = "Reloads the Image's contents from the ImageData or CompressedImageData used to create the image."
            }
          }
        },
        setFilter = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[mag]",
              name = "mag"
            }
          },
          description = "Sets the filter mode for an image.",
          link = "https://love2d.org/wiki/Image:setFilter",
          type = "function"
        },
        setMipmapFilter = {
          link = "https://love2d.org/wiki/Image:setMipmapFilter",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "filtermode"
                },
                {
                  displayName = "[sharpness]",
                  name = "sharpness"
                }
              },
              description = "Sets the mipmap filter mode for an Image.\n\nMipmapping is useful when drawing an image at a reduced scale. It can improve performance and reduce aliasing issues.\n\nIn 0.10.0 and newer, the Image must be created with the mipmaps flag enabled for the mipmap filter to have any effect."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Disables mipmap filtering."
            }
          }
        },
        setWrap = {
          args = {
            {
              name = "self"
            },
            {
              name = "horizontal"
            },
            {
              displayName = "[vertical]",
              name = "vertical"
            }
          },
          description = "Sets the wrapping properties of an Image.\n\nThis function sets the way an Image is repeated when it is drawn with a Quad that is larger than the image's extent. An image may be clamped or set to repeat in both horizontal and vertical directions. Clamped images appear only once, but repeated ones repeat as many times as there is room in the Quad.\n\nIf you use a Quad that is larger than the image extent and do not use repeated tiling, there may be an unwanted visual effect of the image stretching all the way to fill the Quad. If this is the case, setting Image:getWrap(\"repeat\", \"repeat\") for all the images to be repeated, and using Quad of appropriate size will result in the best visual appearance.",
          link = "https://love2d.org/wiki/Image:setWrap",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Texture",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    ImageData = {
      fields = {
        encode = {
          args = {
            {
              name = "self"
            },
            {
              name = "format"
            },
            {
              displayName = "[filename]",
              name = "filename"
            }
          },
          description = "Encodes the ImageData and optionally writes it to the save directory.",
          link = "https://love2d.org/wiki/ImageData:encode",
          returnTypes = {
            {
              name = "FileData",
              type = "ref"
            }
          },
          type = "function"
        },
        getDimensions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width and height of the ImageData in pixels.",
          link = "https://love2d.org/wiki/ImageData:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the height of the ImageData in pixels.",
          link = "https://love2d.org/wiki/ImageData:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPixel = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Gets the color of a pixel at a specific position in the image.\n\nValid x and y values start at 0 and go up to image width and height minus 1. Non-integer values are floored.",
          link = "https://love2d.org/wiki/ImageData:getPixel",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWidth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width of the ImageData in pixels.",
          link = "https://love2d.org/wiki/ImageData:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        mapPixel = {
          args = {
            {
              name = "self"
            },
            {
              name = "pixelFunction"
            }
          },
          description = "Transform an image by applying a function to every pixel.\n\nThis function is a higher order function. It takes another function as a parameter, and calls it once for each pixel in the ImageData.\n\nThe function parameter is called with six parameters for each pixel in turn. The parameters are numbers that represent the x and y coordinates of the pixel and its red, green, blue and alpha values. The function parameter can return up to four number values, which become the new r, g, b and a values of the pixel. If the function returns fewer values, the remaining components are set to 0.",
          link = "https://love2d.org/wiki/ImageData:mapPixel",
          type = "function"
        },
        paste = {
          args = {
            {
              name = "self"
            },
            {
              name = "source"
            },
            {
              name = "dx"
            },
            {
              name = "dy"
            },
            {
              name = "sx"
            },
            {
              name = "sy"
            },
            {
              name = "sw"
            },
            {
              name = "sh"
            }
          },
          description = "Paste into ImageData from another source ImageData.",
          link = "https://love2d.org/wiki/ImageData:paste",
          type = "function"
        },
        setPixel = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "r"
            },
            {
              name = "g"
            },
            {
              name = "b"
            },
            {
              name = "a"
            }
          },
          description = "Sets the color of a pixel at a specific position in the image.\n\nValid x and y values start at 0 and go up to image width and height minus 1.",
          link = "https://love2d.org/wiki/ImageData:setPixel",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Data",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Joint = {
      fields = {
        destroy = {
          args = {
            {
              name = "self"
            }
          },
          description = "Explicitly destroys the Joint. When you don't have time to wait for garbage collection, this function may be used to free the object immediately, but note that an error will occur if you attempt to use the object after calling this function.",
          link = "https://love2d.org/wiki/Joint:destroy",
          type = "function"
        },
        getAnchors = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the anchor points of the joint.",
          link = "https://love2d.org/wiki/Joint:getAnchors",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getBodies = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the bodies that the Joint is attached to.",
          link = "https://love2d.org/wiki/Joint:getBodies",
          returnTypes = {
            {
              name = "Body",
              type = "ref"
            },
            {
              name = "Body",
              type = "ref"
            }
          },
          type = "function"
        },
        getCollideConnected = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the connected Bodies collide.",
          link = "https://love2d.org/wiki/Joint:getCollideConnected",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        getReactionForce = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the reaction force on Body 2 at the joint anchor.",
          link = "https://love2d.org/wiki/Joint:getReactionForce",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getReactionTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "invdt"
            }
          },
          description = "Returns the reaction torque on the second body.",
          link = "https://love2d.org/wiki/Joint:getReactionTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getType = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a string representing the type.",
          link = "https://love2d.org/wiki/Joint:getType",
          returnTypes = {
            {
              name = "JointType",
              type = "ref"
            }
          },
          type = "function"
        },
        getUserData = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the Lua value associated with this Joint.",
          link = "https://love2d.org/wiki/Joint:getUserData",
          returnTypes = {
            {
              name = "any",
              type = "ref"
            }
          },
          type = "function"
        },
        isDestroyed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Joint is destroyed. Destroyed joints cannot be used.",
          link = "https://love2d.org/wiki/Joint:isDestroyed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setUserData = {
          args = {
            {
              name = "self"
            },
            {
              name = "value"
            }
          },
          description = "Associates a Lua value with the Joint.\n\nTo delete the reference, explicitly pass nil.",
          link = "https://love2d.org/wiki/Joint:setUserData",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Joystick = {
      fields = {
        getAxes = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the direction of each axis.",
          link = "https://love2d.org/wiki/Joystick:getAxes",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getAxis = {
          args = {
            {
              name = "self"
            },
            {
              name = "axis"
            }
          },
          description = "Gets the direction of an axis.",
          link = "https://love2d.org/wiki/Joystick:getAxis",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getAxisCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of axes on the joystick.",
          link = "https://love2d.org/wiki/Joystick:getAxisCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getButtonCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of buttons on the joystick.",
          link = "https://love2d.org/wiki/Joystick:getButtonCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getGUID = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a stable GUID unique to the type of the physical joystick which does not change over time. For example, all Sony Dualshock 3 controllers in OS X have the same GUID. The value is platform-dependent.",
          link = "https://love2d.org/wiki/Joystick:getGUID",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        getGamepadAxis = {
          args = {
            {
              name = "self"
            },
            {
              name = "axis"
            }
          },
          description = "Gets the direction of a virtual gamepad axis. If the Joystick isn't recognized as a gamepad or isn't connected, this function will always return 0.",
          link = "https://love2d.org/wiki/Joystick:getGamepadAxis",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getGamepadMapping = {
          link = "https://love2d.org/wiki/Joystick:getGamepadMapping",
          returnTypes = {
            {
              name = "JoystickInputType",
              type = "ref"
            },
            {
              type = "number"
            },
            {
              name = "JoystickHat",
              type = "ref"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "axis"
                }
              },
              description = "Gets the button, axis or hat that a virtual gamepad input is bound to."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "button"
                }
              },
              description = "Gets the button, axis or hat that a virtual gamepad input is bound to."
            }
          }
        },
        getHat = {
          args = {
            {
              name = "self"
            },
            {
              name = "hat"
            }
          },
          description = "Gets the direction of the Joystick's hat.",
          link = "https://love2d.org/wiki/Joystick:getHat",
          returnTypes = {
            {
              name = "JoystickHat",
              type = "ref"
            }
          },
          type = "function"
        },
        getHatCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of hats on the joystick.",
          link = "https://love2d.org/wiki/Joystick:getHatCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getID = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the joystick's unique identifier. The identifier will remain the same for the life of the game, even when the Joystick is disconnected and reconnected, but it will change when the game is re-launched.",
          link = "https://love2d.org/wiki/Joystick:getID",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getName = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the name of the joystick.",
          link = "https://love2d.org/wiki/Joystick:getName",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        getVibration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the current vibration motor strengths on a Joystick with rumble support.",
          link = "https://love2d.org/wiki/Joystick:getVibration",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        isConnected = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Joystick is connected.",
          link = "https://love2d.org/wiki/Joystick:isConnected",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isDown = {
          args = {
            {
              name = "self"
            },
            {
              name = "..."
            }
          },
          description = "Checks if a button on the Joystick is pressed.\n\nLÖVE 0.9.0 had a bug which required the button indices passed to Joystick:isDown to be 0-based instead of 1-based, for example button 1 would be 0 for this function. It was fixed in 0.9.1.",
          link = "https://love2d.org/wiki/Joystick:isDown",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isGamepad = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Joystick is recognized as a gamepad. If this is the case, the Joystick's buttons and axes can be used in a standardized manner across different operating systems and joystick models via Joystick:getGamepadAxis and related functions.\n\nLÖVE automatically recognizes most popular controllers with a similar layout to the Xbox 360 controller as gamepads, but you can add more with love.joystick.setGamepadMapping.",
          link = "https://love2d.org/wiki/Joystick:isGamepad",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isGamepadDown = {
          args = {
            {
              name = "self"
            },
            {
              name = "..."
            }
          },
          description = "Checks if a virtual gamepad button on the Joystick is pressed. If the Joystick is not recognized as a Gamepad or isn't connected, then this function will always return false.",
          link = "https://love2d.org/wiki/Joystick:isGamepadDown",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isVibrationSupported = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Joystick supports vibration.",
          link = "https://love2d.org/wiki/Joystick:isVibrationSupported",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setVibration = {
          link = "https://love2d.org/wiki/Joystick:setVibration",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "left"
                },
                {
                  name = "right"
                }
              },
              description = "Sets the vibration motor speeds on a Joystick with rumble support."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Sets the vibration motor speeds on a Joystick with rumble support."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "left"
                },
                {
                  name = "right"
                },
                {
                  name = "duration"
                }
              },
              description = "Sets the vibration motor speeds on a Joystick with rumble support."
            }
          }
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Mesh = {
      fields = {
        attachAttribute = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            },
            {
              name = "mesh"
            }
          },
          description = "Attaches a vertex attribute from a different Mesh onto this Mesh, for use when drawing. This can be used to share vertex attribute data between several different Meshes.",
          link = "https://love2d.org/wiki/Mesh:attachAttribute",
          type = "function"
        },
        getDrawMode = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the mode used when drawing the Mesh.",
          link = "https://love2d.org/wiki/Mesh:getDrawMode",
          returnTypes = {
            {
              name = "MeshDrawMode",
              type = "ref"
            }
          },
          type = "function"
        },
        getDrawRange = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the range of vertices used when drawing the Mesh.\n\nIf the Mesh's draw range has not been set previously with Mesh:setDrawRange, this function will return nil.",
          link = "https://love2d.org/wiki/Mesh:getDrawRange",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getTexture = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the texture (Image or Canvas) used when drawing the Mesh.",
          link = "https://love2d.org/wiki/Mesh:getTexture",
          returnTypes = {
            {
              name = "Texture",
              type = "ref"
            }
          },
          type = "function"
        },
        getVertex = {
          link = "https://love2d.org/wiki/Mesh:getVertex",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                }
              },
              description = "Gets the properties of a vertex in the Mesh."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                }
              },
              description = "Gets the properties of a vertex in the Mesh."
            }
          }
        },
        getVertexAttribute = {
          args = {
            {
              name = "self"
            },
            {
              name = "vertexindex"
            },
            {
              name = "attributeindex"
            }
          },
          description = "Gets the properties of a specific attribute within a vertex in the Mesh.\n\nMeshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.",
          link = "https://love2d.org/wiki/Mesh:getVertexAttribute",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getVertexCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the total number of vertices in the Mesh.",
          link = "https://love2d.org/wiki/Mesh:getVertexCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getVertexFormat = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the vertex format that the Mesh was created with.",
          link = "https://love2d.org/wiki/Mesh:getVertexFormat",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getVertexMap = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen.\n\nIf no vertex map has been set previously via Mesh:setVertexMap, then this function will return nil in LÖVE 0.10.0+, or an empty table in 0.9.2 and older.",
          link = "https://love2d.org/wiki/Mesh:getVertexMap",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        isAttributeEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            }
          },
          description = "Gets whether a specific vertex attribute in the Mesh is enabled. Vertex data from disabled attributes is not used when drawing the Mesh.",
          link = "https://love2d.org/wiki/Mesh:isAttributeEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setAttributeEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            },
            {
              name = "enable"
            }
          },
          description = "Enables or disables a specific vertex attribute in the Mesh. Vertex data from disabled attributes is not used when drawing the Mesh.",
          link = "https://love2d.org/wiki/Mesh:setAttributeEnabled",
          type = "function"
        },
        setDrawMode = {
          args = {
            {
              name = "self"
            },
            {
              name = "mode"
            }
          },
          description = "Sets the mode used when drawing the Mesh.",
          link = "https://love2d.org/wiki/Mesh:setDrawMode",
          type = "function"
        },
        setDrawRange = {
          link = "https://love2d.org/wiki/Mesh:setDrawRange",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "min"
                },
                {
                  name = "max"
                }
              },
              description = "Restricts the drawn vertices of the Mesh to a subset of the total.\n\nIf a vertex map is used with the Mesh, this method will set a subset of the values in the vertex map array to use, instead of a subset of the total vertices in the Mesh.\n\nFor example, if Mesh:setVertexMap(1, 2, 3, 1, 3, 4) and Mesh:setDrawRange(4, 6) are called, vertices 1, 3, and 4 will be drawn."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Allows all vertices in the Mesh to be drawn."
            }
          }
        },
        setTexture = {
          link = "https://love2d.org/wiki/Mesh:setTexture",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Sets the texture (Image or Canvas) used when drawing the Mesh.\n\nWhen called without an argument disables the texture. Untextured meshes have a white color by default."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "texture"
                }
              },
              description = "Sets the texture (Image or Canvas) used when drawing the Mesh.\n\nWhen called without an argument disables the texture. Untextured meshes have a white color by default."
            }
          }
        },
        setVertex = {
          link = "https://love2d.org/wiki/Mesh:setVertex",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                },
                {
                  name = "attributecomponent"
                },
                {
                  name = "..."
                }
              },
              description = "Sets the properties of a vertex in the Mesh."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                },
                {
                  name = "vertex"
                }
              },
              description = "Sets the properties of a vertex in the Mesh."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  name = "u"
                },
                {
                  name = "v"
                },
                {
                  displayName = "[r]",
                  name = "r"
                },
                {
                  displayName = "[g]",
                  name = "g"
                },
                {
                  displayName = "[b]",
                  name = "b"
                },
                {
                  displayName = "[a]",
                  name = "a"
                }
              },
              description = "Sets the vertex components of a Mesh that wasn't created with a custom vertex format."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                },
                {
                  name = "vertex"
                }
              },
              description = "Sets the vertex components of a Mesh that wasn't created with a custom vertex format."
            }
          }
        },
        setVertexAttribute = {
          args = {
            {
              name = "self"
            },
            {
              name = "vertexindex"
            },
            {
              name = "attributeindex"
            },
            {
              name = "value1"
            },
            {
              name = "value2"
            },
            {
              name = "..."
            }
          },
          description = "Sets the properties of a specific attribute within a vertex in the Mesh.\n\nMeshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.",
          link = "https://love2d.org/wiki/Mesh:setVertexAttribute",
          type = "function"
        },
        setVertexMap = {
          link = "https://love2d.org/wiki/Mesh:setVertexMap",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "map"
                }
              },
              description = "Sets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen.\n\nThe vertex map allows you to re-order or reuse vertices when drawing without changing the actual vertex parameters or duplicating vertices. It is especially useful when combined with different Mesh Draw Modes."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "vi1"
                },
                {
                  name = "vi2"
                },
                {
                  name = "vi3"
                }
              },
              description = "Sets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen.\n\nThe vertex map allows you to re-order or reuse vertices when drawing without changing the actual vertex parameters or duplicating vertices. It is especially useful when combined with different Mesh Draw Modes."
            }
          }
        },
        setVertices = {
          link = "https://love2d.org/wiki/Mesh:setVertices",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "vertices"
                }
              },
              description = "Replaces a range of vertices in the Mesh with new ones. The total number of vertices in a Mesh cannot be changed after it has been created."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "vertices"
                }
              },
              description = "Sets the vertex components of a Mesh that wasn't created with a custom vertex format."
            }
          }
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    MotorJoint = {
      fields = {
        getAngularOffset = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the target angular offset between the two Bodies the Joint is attached to.",
          link = "https://love2d.org/wiki/MotorJoint:getAngularOffset",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLinearOffset = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the target linear offset between the two Bodies the Joint is attached to.",
          link = "https://love2d.org/wiki/MotorJoint:getLinearOffset",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        setAngularOffset = {
          args = {
            {
              name = "self"
            },
            {
              name = "angularoffset"
            }
          },
          description = "Sets the target angluar offset between the two Bodies the Joint is attached to.",
          link = "https://love2d.org/wiki/MotorJoint:setAngularOffset",
          type = "function"
        },
        setLinearOffset = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets the target linear offset between the two Bodies the Joint is attached to.",
          link = "https://love2d.org/wiki/MotorJoint:setLinearOffset",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    MouseJoint = {
      fields = {
        getDampingRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the damping ratio.",
          link = "https://love2d.org/wiki/MouseJoint:getDampingRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFrequency = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the frequency.",
          link = "https://love2d.org/wiki/MouseJoint:getFrequency",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxForce = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the highest allowed force.",
          link = "https://love2d.org/wiki/MouseJoint:getMaxForce",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getTarget = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the target point.",
          link = "https://love2d.org/wiki/MouseJoint:getTarget",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        setDampingRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "Sets a new damping ratio.",
          link = "https://love2d.org/wiki/MouseJoint:setDampingRatio",
          type = "function"
        },
        setFrequency = {
          args = {
            {
              name = "self"
            },
            {
              name = "freq"
            }
          },
          description = "Sets a new frequency.",
          link = "https://love2d.org/wiki/MouseJoint:setFrequency",
          type = "function"
        },
        setMaxForce = {
          args = {
            {
              name = "self"
            },
            {
              name = "f"
            }
          },
          description = "Sets the highest allowed force.",
          link = "https://love2d.org/wiki/MouseJoint:setMaxForce",
          type = "function"
        },
        setTarget = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets the target point.",
          link = "https://love2d.org/wiki/MouseJoint:setTarget",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Object = {
      fields = {
        type = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the type of the object as a string.",
          link = "https://love2d.org/wiki/Object:type",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        typeOf = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            }
          },
          description = "Checks whether an object is of a certain type. If the object has the type with the specified name in its hierarchy, this function will return true.",
          link = "https://love2d.org/wiki/Object:typeOf",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        }
      },
      type = "table"
    },
    ParticleSystem = {
      fields = {
        clone = {
          args = {
            {
              name = "self"
            }
          },
          description = "Creates an identical copy of the ParticleSystem in the stopped state.\n\nCloned ParticleSystem inherit all the set-able state of the original ParticleSystem, but they are initialized stopped.",
          link = "https://love2d.org/wiki/ParticleSystem:clone",
          returnTypes = {
            {
              name = "ParticleSystem",
              type = "ref"
            }
          },
          type = "function"
        },
        emit = {
          args = {
            {
              name = "self"
            },
            {
              name = "numparticles"
            }
          },
          description = "Emits a burst of particles from the particle emitter.",
          link = "https://love2d.org/wiki/ParticleSystem:emit",
          type = "function"
        },
        getAreaSpread = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the area-based spawn parameters for the particles.",
          link = "https://love2d.org/wiki/ParticleSystem:getAreaSpread",
          returnTypes = {
            {
              name = "AreaSpreadDistribution",
              type = "ref"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getBufferSize = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the size of the buffer (the max allowed amount of particles in the system).",
          link = "https://love2d.org/wiki/ParticleSystem:getBufferSize",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getColors = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a series of colors to apply to the particle sprite. The particle system will interpolate between each color evenly over the particle's lifetime. Color modulation needs to be activated for this function to have any effect.\n\nArguments are passed in groups of four, representing the components of the desired RGBA value. At least one color must be specified. A maximum of eight may be used.",
          link = "https://love2d.org/wiki/ParticleSystem:getColors",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the amount of particles that are currently in the system.",
          link = "https://love2d.org/wiki/ParticleSystem:getCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDirection = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the direction the particles will be emitted in.",
          link = "https://love2d.org/wiki/ParticleSystem:getDirection",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getEmissionRate = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the amount of particles emitted per second.",
          link = "https://love2d.org/wiki/ParticleSystem:getEmissionRate",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getEmitterLifetime = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets how long the particle system should emit particles (if -1 then it emits particles forever).",
          link = "https://love2d.org/wiki/ParticleSystem:getEmitterLifetime",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getInsertMode = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the mode to use when the ParticleSystem adds new particles.",
          link = "https://love2d.org/wiki/ParticleSystem:getInsertMode",
          returnTypes = {
            {
              name = "ParticleInsertMode",
              type = "ref"
            }
          },
          type = "function"
        },
        getLinearAcceleration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the linear acceleration (acceleration along the x and y axes) for particles.\n\nEvery particle created will accelerate along the x and y axes between xmin,ymin and xmax,ymax.",
          link = "https://love2d.org/wiki/ParticleSystem:getLinearAcceleration",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLinearDamping = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the amount of linear damping (constant deceleration) for particles.",
          link = "https://love2d.org/wiki/ParticleSystem:getLinearDamping",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getOffset = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the offget position which the particle sprite is rotated around. If this function is not used, the particles rotate around their center.",
          link = "https://love2d.org/wiki/ParticleSystem:getOffset",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getParticleLifetime = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the life of the particles.",
          link = "https://love2d.org/wiki/ParticleSystem:getParticleLifetime",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPosition = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the position of the emitter.",
          link = "https://love2d.org/wiki/ParticleSystem:getPosition",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getQuads = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the series of Quads used for the particle sprites.",
          link = "https://love2d.org/wiki/ParticleSystem:getQuads",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getRadialAcceleration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the radial acceleration (away from the emitter).",
          link = "https://love2d.org/wiki/ParticleSystem:getRadialAcceleration",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRotation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the rotation of the image upon particle creation (in radians).",
          link = "https://love2d.org/wiki/ParticleSystem:getRotation",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSizeVariation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the degree of variation (0 meaning no variation and 1 meaning full variation between start and end).",
          link = "https://love2d.org/wiki/ParticleSystem:getSizeVariation",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSizes = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a series of sizes by which to scale a particle sprite. 1.0 is normal size. The particle system will interpolate between each size evenly over the particle's lifetime.\n\nAt least one size must be specified. A maximum of eight may be used.",
          link = "https://love2d.org/wiki/ParticleSystem:getSizes",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the speed of the particles.",
          link = "https://love2d.org/wiki/ParticleSystem:getSpeed",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpin = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the spin of the sprite.",
          link = "https://love2d.org/wiki/ParticleSystem:getSpin",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpinVariation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the degree of variation (0 meaning no variation and 1 meaning full variation between start and end).",
          link = "https://love2d.org/wiki/ParticleSystem:getSpinVariation",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpread = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the amount of spread for the system.",
          link = "https://love2d.org/wiki/ParticleSystem:getSpread",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getTangentialAcceleration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the tangential acceleration (acceleration perpendicular to the particle's direction).",
          link = "https://love2d.org/wiki/ParticleSystem:getTangentialAcceleration",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getTexture = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the Image or Canvas which is to be emitted.",
          link = "https://love2d.org/wiki/ParticleSystem:getTexture",
          returnTypes = {
            {
              name = "Texture",
              type = "ref"
            }
          },
          type = "function"
        },
        hasRelativeRotation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether particle angles and rotations are relative to their velocities. If enabled, particles are aligned to the angle of their velocities and rotate relative to that angle.",
          link = "https://love2d.org/wiki/ParticleSystem:hasRelativeRotation",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isActive = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the particle system is actively emitting particles.",
          link = "https://love2d.org/wiki/ParticleSystem:isActive",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isPaused = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the particle system is paused.",
          link = "https://love2d.org/wiki/ParticleSystem:isPaused",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isStopped = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the particle system is stopped.",
          link = "https://love2d.org/wiki/ParticleSystem:isStopped",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        moveTo = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Moves the position of the emitter. This results in smoother particle spawning behaviour than if ParticleSystem:setPosition is used every frame.",
          link = "https://love2d.org/wiki/ParticleSystem:moveTo",
          type = "function"
        },
        pause = {
          args = {
            {
              name = "self"
            }
          },
          description = "Pauses the particle emitter.",
          link = "https://love2d.org/wiki/ParticleSystem:pause",
          type = "function"
        },
        reset = {
          args = {
            {
              name = "self"
            }
          },
          description = "Resets the particle emitter, removing any existing particles and resetting the lifetime counter.",
          link = "https://love2d.org/wiki/ParticleSystem:reset",
          type = "function"
        },
        setAreaSpread = {
          args = {
            {
              name = "self"
            },
            {
              name = "distribution"
            },
            {
              name = "dx"
            },
            {
              name = "dy"
            }
          },
          description = "Sets area-based spawn parameters for the particles. Newly created particles will spawn in an area around the emitter based on the parameters to this function.",
          link = "https://love2d.org/wiki/ParticleSystem:setAreaSpread",
          type = "function"
        },
        setBufferSize = {
          args = {
            {
              name = "self"
            },
            {
              name = "buffer"
            }
          },
          description = "Sets the size of the buffer (the max allowed amount of particles in the system).",
          link = "https://love2d.org/wiki/ParticleSystem:setBufferSize",
          type = "function"
        },
        setColors = {
          args = {
            {
              name = "self"
            },
            {
              name = "r1"
            },
            {
              name = "g1"
            },
            {
              name = "b1"
            },
            {
              name = "a1"
            },
            {
              name = "r2"
            },
            {
              name = "g2"
            },
            {
              name = "b2"
            },
            {
              name = "a2"
            },
            {
              name = "..."
            }
          },
          description = "Sets a series of colors to apply to the particle sprite. The particle system will interpolate between each color evenly over the particle's lifetime. Color modulation needs to be activated for this function to have any effect.\n\nArguments are passed in groups of four, representing the components of the desired RGBA value. At least one color must be specified. A maximum of eight may be used.",
          link = "https://love2d.org/wiki/ParticleSystem:setColors",
          type = "function"
        },
        setDirection = {
          args = {
            {
              name = "self"
            },
            {
              name = "direction"
            }
          },
          description = "Sets the direction the particles will be emitted in.",
          link = "https://love2d.org/wiki/ParticleSystem:setDirection",
          type = "function"
        },
        setEmissionRate = {
          args = {
            {
              name = "self"
            },
            {
              name = "rate"
            }
          },
          description = "Sets the amount of particles emitted per second.",
          link = "https://love2d.org/wiki/ParticleSystem:setEmissionRate",
          type = "function"
        },
        setEmitterLifetime = {
          args = {
            {
              name = "self"
            },
            {
              name = "life"
            }
          },
          description = "Sets how long the particle system should emit particles (if -1 then it emits particles forever).",
          link = "https://love2d.org/wiki/ParticleSystem:setEmitterLifetime",
          type = "function"
        },
        setInsertMode = {
          args = {
            {
              name = "self"
            },
            {
              name = "mode"
            }
          },
          description = "Sets the mode to use when the ParticleSystem adds new particles.",
          link = "https://love2d.org/wiki/ParticleSystem:setInsertMode",
          type = "function"
        },
        setLinearAcceleration = {
          args = {
            {
              name = "self"
            },
            {
              name = "xmin"
            },
            {
              displayName = "[ymin]",
              name = "ymin"
            },
            {
              displayName = "[xmax]",
              name = "xmax"
            },
            {
              displayName = "[ymax]",
              name = "ymax"
            }
          },
          description = "Sets the linear acceleration (acceleration along the x and y axes) for particles.\n\nEvery particle created will accelerate along the x and y axes between xmin,ymin and xmax,ymax.",
          link = "https://love2d.org/wiki/ParticleSystem:setLinearAcceleration",
          type = "function"
        },
        setLinearDamping = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              name = "max"
            }
          },
          description = "Sets the amount of linear damping (constant deceleration) for particles.",
          link = "https://love2d.org/wiki/ParticleSystem:setLinearDamping",
          type = "function"
        },
        setOffset = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Set the offset position which the particle sprite is rotated around. If this function is not used, the particles rotate around their center.",
          link = "https://love2d.org/wiki/ParticleSystem:setOffset",
          type = "function"
        },
        setParticleLifetime = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Sets the life of the particles.",
          link = "https://love2d.org/wiki/ParticleSystem:setParticleLifetime",
          type = "function"
        },
        setPosition = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Sets the position of the emitter.",
          link = "https://love2d.org/wiki/ParticleSystem:setPosition",
          type = "function"
        },
        setQuads = {
          link = "https://love2d.org/wiki/ParticleSystem:setQuads",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "quad1"
                },
                {
                  name = "quad2"
                }
              },
              description = "Sets a series of Quads to use for the particle sprites. Particles will choose a Quad from the list based on the particle's current lifetime, allowing for the use of animated sprite sheets with ParticleSystems."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "quads"
                }
              },
              description = "Sets a series of Quads to use for the particle sprites. Particles will choose a Quad from the list based on the particle's current lifetime, allowing for the use of animated sprite sheets with ParticleSystems."
            }
          }
        },
        setRadialAcceleration = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Set the radial acceleration (away from the emitter).",
          link = "https://love2d.org/wiki/ParticleSystem:setRadialAcceleration",
          type = "function"
        },
        setRelativeRotation = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Sets whether particle angles and rotations are relative to their velocities. If enabled, particles are aligned to the angle of their velocities and rotate relative to that angle.",
          link = "https://love2d.org/wiki/ParticleSystem:setRelativeRotation",
          type = "function"
        },
        setRotation = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Sets the rotation of the image upon particle creation (in radians).",
          link = "https://love2d.org/wiki/ParticleSystem:setRotation",
          type = "function"
        },
        setSizeVariation = {
          args = {
            {
              name = "self"
            },
            {
              name = "variation"
            }
          },
          description = "Sets the degree of variation (0 meaning no variation and 1 meaning full variation between start and end).",
          link = "https://love2d.org/wiki/ParticleSystem:setSizeVariation",
          type = "function"
        },
        setSizes = {
          args = {
            {
              name = "self"
            },
            {
              name = "size1"
            },
            {
              name = "size2"
            },
            {
              name = "..."
            }
          },
          description = "Sets a series of sizes by which to scale a particle sprite. 1.0 is normal size. The particle system will interpolate between each size evenly over the particle's lifetime.\n\nAt least one size must be specified. A maximum of eight may be used.",
          link = "https://love2d.org/wiki/ParticleSystem:setSizes",
          type = "function"
        },
        setSpeed = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Sets the speed of the particles.",
          link = "https://love2d.org/wiki/ParticleSystem:setSpeed",
          type = "function"
        },
        setSpin = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Sets the spin of the sprite.",
          link = "https://love2d.org/wiki/ParticleSystem:setSpin",
          type = "function"
        },
        setSpinVariation = {
          args = {
            {
              name = "self"
            },
            {
              name = "variation"
            }
          },
          description = "Sets the degree of variation (0 meaning no variation and 1 meaning full variation between start and end).",
          link = "https://love2d.org/wiki/ParticleSystem:setSpinVariation",
          type = "function"
        },
        setSpread = {
          args = {
            {
              name = "self"
            },
            {
              name = "spread"
            }
          },
          description = "Sets the amount of spread for the system.",
          link = "https://love2d.org/wiki/ParticleSystem:setSpread",
          type = "function"
        },
        setTangentialAcceleration = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              displayName = "[max]",
              name = "max"
            }
          },
          description = "Sets the tangential acceleration (acceleration perpendicular to the particle's direction).",
          link = "https://love2d.org/wiki/ParticleSystem:setTangentialAcceleration",
          type = "function"
        },
        setTexture = {
          args = {
            {
              name = "self"
            },
            {
              name = "texture"
            }
          },
          description = "Sets the Image or Canvas which is to be emitted.",
          link = "https://love2d.org/wiki/ParticleSystem:setTexture",
          type = "function"
        },
        start = {
          args = {
            {
              name = "self"
            }
          },
          description = "Starts the particle emitter.",
          link = "https://love2d.org/wiki/ParticleSystem:start",
          type = "function"
        },
        stop = {
          args = {
            {
              name = "self"
            }
          },
          description = "Stops the particle emitter, resetting the lifetime counter.",
          link = "https://love2d.org/wiki/ParticleSystem:stop",
          type = "function"
        },
        update = {
          args = {
            {
              name = "self"
            },
            {
              name = "dt"
            }
          },
          description = "Updates the particle system; moving, creating and killing particles.",
          link = "https://love2d.org/wiki/ParticleSystem:update",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    PolygonShape = {
      fields = {
        getPoints = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the local coordinates of the polygon's vertices.\n\nThis function has a variable number of return values. It can be used in a nested fashion with love.graphics.polygon.\n\nThis function may have up to 16 return values, since it returns two values for each vertex in the polygon. In other words, it can return the coordinates of up to 8 points.",
          link = "https://love2d.org/wiki/PolygonShape:getPoints",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Shape",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    PrismaticJoint = {
      fields = {
        getAxis = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the world-space axis vector of the Prismatic Joint.",
          link = "https://love2d.org/wiki/PrismaticJoint:getAxis",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current joint angle speed.",
          link = "https://love2d.org/wiki/PrismaticJoint:getJointSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointTranslation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current joint translation.",
          link = "https://love2d.org/wiki/PrismaticJoint:getJointTranslation",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLimits = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the joint limits.",
          link = "https://love2d.org/wiki/PrismaticJoint:getLimits",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLowerLimit = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the lower limit.",
          link = "https://love2d.org/wiki/PrismaticJoint:getLowerLimit",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxMotorForce = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum motor force.",
          link = "https://love2d.org/wiki/PrismaticJoint:getMaxMotorForce",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorForce = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current motor force.",
          link = "https://love2d.org/wiki/PrismaticJoint:getMotorForce",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the motor speed.",
          link = "https://love2d.org/wiki/PrismaticJoint:getMotorSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getUpperLimit = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the upper limit.",
          link = "https://love2d.org/wiki/PrismaticJoint:getUpperLimit",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        hasLimitsEnabled = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the limits are enabled.",
          link = "https://love2d.org/wiki/PrismaticJoint:hasLimitsEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isMotorEnabled = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the motor is enabled.",
          link = "https://love2d.org/wiki/PrismaticJoint:isMotorEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setLimits = {
          args = {
            {
              name = "self"
            },
            {
              name = "lower"
            },
            {
              name = "upper"
            }
          },
          description = "Sets the limits.",
          link = "https://love2d.org/wiki/PrismaticJoint:setLimits",
          type = "function"
        },
        setLimitsEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Enables or disables the limits of the joint.",
          link = "https://love2d.org/wiki/PrismaticJoint:setLimitsEnabled",
          type = "function"
        },
        setLowerLimit = {
          args = {
            {
              name = "self"
            },
            {
              name = "lower"
            }
          },
          description = "Sets the lower limit.",
          link = "https://love2d.org/wiki/PrismaticJoint:setLowerLimit",
          type = "function"
        },
        setMaxMotorForce = {
          args = {
            {
              name = "self"
            },
            {
              name = "f"
            }
          },
          description = "Set the maximum motor force.",
          link = "https://love2d.org/wiki/PrismaticJoint:setMaxMotorForce",
          type = "function"
        },
        setMotorEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Starts or stops the joint motor.",
          link = "https://love2d.org/wiki/PrismaticJoint:setMotorEnabled",
          type = "function"
        },
        setMotorSpeed = {
          args = {
            {
              name = "self"
            },
            {
              name = "s"
            }
          },
          description = "Sets the motor speed.",
          link = "https://love2d.org/wiki/PrismaticJoint:setMotorSpeed",
          type = "function"
        },
        setUpperLimit = {
          args = {
            {
              name = "self"
            },
            {
              name = "upper"
            }
          },
          description = "Sets the upper limit.",
          link = "https://love2d.org/wiki/PrismaticJoint:setUpperLimit",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    PulleyJoint = {
      fields = {
        getConstant = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the total length of the rope.",
          link = "https://love2d.org/wiki/PulleyJoint:getConstant",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getGroundAnchors = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the ground anchor positions in world coordinates.",
          link = "https://love2d.org/wiki/PulleyJoint:getGroundAnchors",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLengthA = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current length of the rope segment attached to the first body.",
          link = "https://love2d.org/wiki/PulleyJoint:getLengthA",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLengthB = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current length of the rope segment attached to the second body.",
          link = "https://love2d.org/wiki/PulleyJoint:getLengthB",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxLengths = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the maximum lengths of the rope segments.",
          link = "https://love2d.org/wiki/PulleyJoint:getMaxLengths",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the pulley ratio.",
          link = "https://love2d.org/wiki/PulleyJoint:getRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setConstant = {
          args = {
            {
              name = "self"
            },
            {
              name = "length"
            }
          },
          description = "Set the total length of the rope.\n\nSetting a new length for the rope updates the maximum length values of the joint.",
          link = "https://love2d.org/wiki/PulleyJoint:setConstant",
          type = "function"
        },
        setMaxLengths = {
          args = {
            {
              name = "self"
            },
            {
              name = "max1"
            },
            {
              name = "max2"
            }
          },
          description = "Set the maximum lengths of the rope segments.\n\nThe physics module also imposes maximum values for the rope segments. If the parameters exceed these values, the maximum values are set instead of the requested values.",
          link = "https://love2d.org/wiki/PulleyJoint:setMaxLengths",
          type = "function"
        },
        setRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "Set the pulley ratio.",
          link = "https://love2d.org/wiki/PulleyJoint:setRatio",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Quad = {
      fields = {
        getTextureDimensions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets reference texture dimensions initially specified in love.graphics.newQuad.",
          link = "https://love2d.org/wiki/Quad:getTextureDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getViewport = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the current viewport of this Quad.",
          link = "https://love2d.org/wiki/Quad:getViewport",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        setViewport = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "w"
            },
            {
              name = "h"
            }
          },
          description = "Sets the texture coordinates according to a viewport.",
          link = "https://love2d.org/wiki/Quad:setViewport",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    RandomGenerator = {
      fields = {
        getSeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the state of the random number generator.\n\nThe state is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer values above 2^53.",
          link = "https://love2d.org/wiki/RandomGenerator:getSeed",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getState = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with RandomGenerator:setState.\n\nThis is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.\n\nThe value of the state string does not depend on the current operating system.",
          link = "https://love2d.org/wiki/RandomGenerator:getState",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        random = {
          link = "https://love2d.org/wiki/RandomGenerator:random",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Get uniformly distributed pseudo-random number within [0, 1]."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "max"
                }
              },
              description = "Get uniformly distributed pseudo-random integer number within [1, max]."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "min"
                },
                {
                  name = "max"
                }
              },
              description = "Get uniformly distributed pseudo-random integer number within [min, max]."
            }
          }
        },
        randomNormal = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[stddev]",
              name = "stddev"
            },
            {
              displayName = "[mean]",
              name = "mean"
            }
          },
          description = "Get a normally distributed pseudo random number.",
          link = "https://love2d.org/wiki/RandomGenerator:randomNormal",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setSeed = {
          link = "https://love2d.org/wiki/RandomGenerator:setSeed",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "seed"
                }
              },
              description = "Sets the seed of the random number generator using the specified integer number."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "low"
                },
                {
                  displayName = "[high]",
                  name = "high"
                }
              },
              description = "Sets the seed of the random number generator using the specified integer number."
            }
          }
        },
        setState = {
          args = {
            {
              name = "self"
            },
            {
              name = "state"
            }
          },
          description = "Sets the current state of the random number generator. The value used as an argument for this function is an opaque implementation-dependent string and should only originate from a previous call to RandomGenerator:getState.\n\nThis is different from RandomGenerator:setSeed in that setState directly sets the RandomGenerator's current implementation-dependent state, whereas setSeed gives it a new seed value.\n\nThe effect of the state string does not depend on the current operating system.",
          link = "https://love2d.org/wiki/RandomGenerator:setState",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    RevoluteJoint = {
      fields = {
        getJointAngle = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current joint angle.",
          link = "https://love2d.org/wiki/RevoluteJoint:getJointAngle",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current joint angle speed.",
          link = "https://love2d.org/wiki/RevoluteJoint:getJointSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLimits = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the joint limits.",
          link = "https://love2d.org/wiki/RevoluteJoint:getLimits",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getLowerLimit = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the lower limit.",
          link = "https://love2d.org/wiki/RevoluteJoint:getLowerLimit",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxMotorTorque = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum motor force.",
          link = "https://love2d.org/wiki/RevoluteJoint:getMaxMotorTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the motor speed.",
          link = "https://love2d.org/wiki/RevoluteJoint:getMotorSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorTorque = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the current motor force.",
          link = "https://love2d.org/wiki/RevoluteJoint:getMotorTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getUpperLimit = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the upper limit.",
          link = "https://love2d.org/wiki/RevoluteJoint:getUpperLimit",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        hasLimitsEnabled = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether limits are enabled.",
          link = "https://love2d.org/wiki/RevoluteJoint:hasLimitsEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isMotorEnabled = {
          args = {
            {
              name = "self"
            }
          },
          description = "Checks whether the motor is enabled.",
          link = "https://love2d.org/wiki/RevoluteJoint:isMotorEnabled",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        setLimits = {
          args = {
            {
              name = "self"
            },
            {
              name = "lower"
            },
            {
              name = "upper"
            }
          },
          description = "Sets the limits.",
          link = "https://love2d.org/wiki/RevoluteJoint:setLimits",
          type = "function"
        },
        setLimitsEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Enables or disables the joint limits.",
          link = "https://love2d.org/wiki/RevoluteJoint:setLimitsEnabled",
          type = "function"
        },
        setLowerLimit = {
          args = {
            {
              name = "self"
            },
            {
              name = "lower"
            }
          },
          description = "Sets the lower limit.",
          link = "https://love2d.org/wiki/RevoluteJoint:setLowerLimit",
          type = "function"
        },
        setMaxMotorTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "f"
            }
          },
          description = "Set the maximum motor force.",
          link = "https://love2d.org/wiki/RevoluteJoint:setMaxMotorTorque",
          type = "function"
        },
        setMotorEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Starts or stops the joint motor.",
          link = "https://love2d.org/wiki/RevoluteJoint:setMotorEnabled",
          type = "function"
        },
        setMotorSpeed = {
          args = {
            {
              name = "self"
            },
            {
              name = "s"
            }
          },
          description = "Sets the motor speed.",
          link = "https://love2d.org/wiki/RevoluteJoint:setMotorSpeed",
          type = "function"
        },
        setUpperLimit = {
          args = {
            {
              name = "self"
            },
            {
              name = "upper"
            }
          },
          description = "Sets the upper limit.",
          link = "https://love2d.org/wiki/RevoluteJoint:setUpperLimit",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    RopeJoint = {
      fields = {
        getMaxLength = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum length of a RopeJoint.",
          link = "https://love2d.org/wiki/RopeJoint:getMaxLength",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Shader = {
      fields = {
        getExternVariable = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            }
          },
          description = "Gets information about an 'extern' ('uniform') variable in the shader.",
          link = "https://love2d.org/wiki/Shader:getExternVariable",
          returnTypes = {
            {
              name = "ShaderVariableType",
              type = "ref"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getWarnings = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns any warning and error messages from compiling the shader code. This can be used for debugging your shaders if there's anything the graphics hardware doesn't like.",
          link = "https://love2d.org/wiki/Shader:getWarnings",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        send = {
          link = "https://love2d.org/wiki/Shader:send",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "name"
                },
                {
                  name = "number"
                },
                {
                  name = "..."
                }
              },
              description = "Sends one or more values to a special (uniform) variable inside the shader. Uniform variables have to be marked using the uniform or extern keyword."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "name"
                },
                {
                  name = "vector"
                },
                {
                  name = "..."
                }
              },
              description = "Sends one or more values to a special (uniform) variable inside the shader. Uniform variables have to be marked using the uniform or extern keyword."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "name"
                },
                {
                  name = "matrix"
                },
                {
                  name = "..."
                }
              },
              description = "Sends one or more values to a special (uniform) variable inside the shader. Uniform variables have to be marked using the uniform or extern keyword."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "name"
                },
                {
                  name = "texture"
                }
              },
              description = "Sends one or more values to a special (uniform) variable inside the shader. Uniform variables have to be marked using the uniform or extern keyword."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "name"
                },
                {
                  name = "boolean"
                },
                {
                  name = "..."
                }
              },
              description = "Sends one or more values to a special (uniform) variable inside the shader. Uniform variables have to be marked using the uniform or extern keyword."
            }
          }
        },
        sendColor = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            },
            {
              name = "color"
            },
            {
              name = "..."
            }
          },
          description = "Sends one or more colors to a special (extern / uniform) vec3 or vec4 variable inside the shader. The color components must be in the range of [0, 255], unlike Shader:send. The colors are gamma-corrected if global gamma-correction is enabled.",
          link = "https://love2d.org/wiki/Shader:sendColor",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Shape = {
      fields = {
        computeAABB = {
          args = {
            {
              name = "self"
            },
            {
              name = "tx"
            },
            {
              name = "ty"
            },
            {
              name = "tr"
            },
            {
              displayName = "[childIndex]",
              name = "childIndex"
            }
          },
          description = "Returns the points of the bounding box for the transformed shape.",
          link = "https://love2d.org/wiki/Shape:computeAABB",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        computeMass = {
          args = {
            {
              name = "self"
            },
            {
              name = "density"
            }
          },
          description = "Computes the mass properties for the shape with the specified density.",
          link = "https://love2d.org/wiki/Shape:computeMass",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getChildCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of children the shape has.",
          link = "https://love2d.org/wiki/Shape:getChildCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRadius = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the radius of the shape.",
          link = "https://love2d.org/wiki/Shape:getRadius",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getType = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets a string representing the Shape. This function can be useful for conditional debug drawing.",
          link = "https://love2d.org/wiki/Shape:getType",
          returnTypes = {
            {
              name = "ShapeType",
              type = "ref"
            }
          },
          type = "function"
        },
        rayCast = {
          args = {
            {
              name = "self"
            },
            {
              name = "x1"
            },
            {
              name = "y1"
            },
            {
              name = "x2"
            },
            {
              name = "y2"
            },
            {
              name = "maxFraction"
            },
            {
              name = "tx"
            },
            {
              name = "ty"
            },
            {
              name = "tr"
            },
            {
              displayName = "[childIndex]",
              name = "childIndex"
            }
          },
          description = "Casts a ray against the shape and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned. The Shape can be transformed to get it into the desired position.\n\nThe ray starts on the first point of the input line and goes towards the second point of the line. The fourth argument is the maximum distance the ray is going to travel as a scale factor of the input line length.\n\nThe childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children.\n\nThe world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point.\n\nhitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction",
          link = "https://love2d.org/wiki/Shape:rayCast",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        testPoint = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Checks whether a point lies inside the shape. This is particularly useful for mouse interaction with the shapes. By looping through all shapes and testing the mouse position with this function, we can find which shapes the mouse touches.",
          link = "https://love2d.org/wiki/Shape:testPoint",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    SoundData = {
      fields = {
        getBitDepth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of bits per sample.",
          link = "https://love2d.org/wiki/SoundData:getBitDepth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getChannels = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of channels in the stream.",
          link = "https://love2d.org/wiki/SoundData:getChannels",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDuration = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the duration of the sound data.",
          link = "https://love2d.org/wiki/SoundData:getDuration",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSample = {
          args = {
            {
              name = "self"
            },
            {
              name = "i"
            }
          },
          description = "Gets the sample at the specified position.",
          link = "https://love2d.org/wiki/SoundData:getSample",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSampleCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of samples per channel of the SoundData.",
          link = "https://love2d.org/wiki/SoundData:getSampleCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSampleRate = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the sample rate of the SoundData.",
          link = "https://love2d.org/wiki/SoundData:getSampleRate",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setSample = {
          args = {
            {
              name = "self"
            },
            {
              name = "i"
            },
            {
              name = "sample"
            }
          },
          description = "Sets the sample at the specified position.",
          link = "https://love2d.org/wiki/SoundData:setSample",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Data",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Source = {
      fields = {
        clone = {
          args = {
            {
              name = "self"
            }
          },
          description = "Creates an identical copy of the Source in the stopped state.\n\nStatic Sources will use significantly less memory and take much less time to be created if Source:clone is used to create them instead of love.audio.newSource, so this method should be preferred when making multiple Sources which play the same sound.\n\nCloned Sources inherit all the set-able state of the original Source, but they are initialized stopped.",
          link = "https://love2d.org/wiki/Source:clone",
          returnTypes = {
            {
              name = "Source",
              type = "ref"
            }
          },
          type = "function"
        },
        getAttenuationDistances = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the reference and maximum distance of the source.",
          link = "https://love2d.org/wiki/Source:getAttenuationDistances",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getChannels = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the number of channels in the Source. Only 1-channel (mono) Sources can use directional and positional effects.",
          link = "https://love2d.org/wiki/Source:getChannels",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getCone = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the Source's directional volume cones. Together with Source:setDirection, the cone angles allow for the Source's volume to vary depending on its direction.",
          link = "https://love2d.org/wiki/Source:getCone",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDirection = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the direction of the Source.",
          link = "https://love2d.org/wiki/Source:getDirection",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getDuration = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[unit]",
              name = "unit"
            }
          },
          description = "Gets the duration of the Source. For streaming Sources it may not always be sample-accurate, and may return -1 if the duration cannot be determined at all.",
          link = "https://love2d.org/wiki/Source:getDuration",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPitch = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the current pitch of the Source.",
          link = "https://love2d.org/wiki/Source:getPitch",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getPosition = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the position of the Source.",
          link = "https://love2d.org/wiki/Source:getPosition",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getRolloff = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the rolloff factor of the source.",
          link = "https://love2d.org/wiki/Source:getRolloff",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getType = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the type (static or stream) of the Source.",
          link = "https://love2d.org/wiki/Source:getType",
          returnTypes = {
            {
              name = "SourceType",
              type = "ref"
            }
          },
          type = "function"
        },
        getVelocity = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the velocity of the Source.",
          link = "https://love2d.org/wiki/Source:getVelocity",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getVolume = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the current volume of the Source.",
          link = "https://love2d.org/wiki/Source:getVolume",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getVolumeLimits = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the volume limits of the source.",
          link = "https://love2d.org/wiki/Source:getVolumeLimits",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        isLooping = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the Source will loop.",
          link = "https://love2d.org/wiki/Source:isLooping",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isPaused = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the Source is paused.",
          link = "https://love2d.org/wiki/Source:isPaused",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isPlaying = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the Source is playing.",
          link = "https://love2d.org/wiki/Source:isPlaying",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isStopped = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the Source is stopped.",
          link = "https://love2d.org/wiki/Source:isStopped",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        pause = {
          args = {
            {
              name = "self"
            }
          },
          description = "Pauses the Source.",
          link = "https://love2d.org/wiki/Source:pause",
          type = "function"
        },
        play = {
          args = {
            {
              name = "self"
            }
          },
          description = "Starts playing the Source.",
          link = "https://love2d.org/wiki/Source:play",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        resume = {
          args = {
            {
              name = "self"
            }
          },
          description = "Resumes a paused Source.",
          link = "https://love2d.org/wiki/Source:resume",
          type = "function"
        },
        rewind = {
          args = {
            {
              name = "self"
            }
          },
          description = "Rewinds a Source.",
          link = "https://love2d.org/wiki/Source:rewind",
          type = "function"
        },
        seek = {
          args = {
            {
              name = "self"
            },
            {
              name = "position"
            },
            {
              displayName = "[unit]",
              name = "unit"
            }
          },
          description = "Sets the playing position of the Source.",
          link = "https://love2d.org/wiki/Source:seek",
          type = "function"
        },
        setAttenuationDistances = {
          args = {
            {
              name = "self"
            },
            {
              name = "ref"
            },
            {
              name = "max"
            }
          },
          description = "Sets the reference and maximum distance of the source.",
          link = "https://love2d.org/wiki/Source:setAttenuationDistances",
          type = "function"
        },
        setCone = {
          args = {
            {
              name = "self"
            },
            {
              name = "innerAngle"
            },
            {
              name = "outerAngle"
            },
            {
              displayName = "[outerVolume]",
              name = "outerVolume"
            }
          },
          description = "Sets the Source's directional volume cones. Together with Source:setDirection, the cone angles allow for the Source's volume to vary depending on its direction.",
          link = "https://love2d.org/wiki/Source:setCone",
          type = "function"
        },
        setDirection = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "z"
            }
          },
          description = "Sets the direction vector of the Source. A zero vector makes the source non-directional.",
          link = "https://love2d.org/wiki/Source:setDirection",
          type = "function"
        },
        setLooping = {
          args = {
            {
              name = "self"
            },
            {
              name = "loop"
            }
          },
          description = "Sets whether the Source should loop.",
          link = "https://love2d.org/wiki/Source:setLooping",
          type = "function"
        },
        setPitch = {
          args = {
            {
              name = "self"
            },
            {
              name = "pitch"
            }
          },
          description = "Sets the pitch of the Source.",
          link = "https://love2d.org/wiki/Source:setPitch",
          type = "function"
        },
        setPosition = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "z"
            }
          },
          description = "Sets the position of the Source.",
          link = "https://love2d.org/wiki/Source:setPosition",
          type = "function"
        },
        setRolloff = {
          args = {
            {
              name = "self"
            },
            {
              name = "rolloff"
            }
          },
          description = "Sets the rolloff factor which affects the strength of the used distance attenuation.\n\nExtended information and detailed formulas can be found in the chapter \"3.4. Attenuation By Distance\" of OpenAL 1.1 specification.",
          link = "https://love2d.org/wiki/Source:setRolloff",
          type = "function"
        },
        setVelocity = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            },
            {
              name = "z"
            }
          },
          description = "Sets the velocity of the Source.\n\nThis does not change the position of the Source, but is used to calculate the doppler effect.",
          link = "https://love2d.org/wiki/Source:setVelocity",
          type = "function"
        },
        setVolume = {
          args = {
            {
              name = "self"
            },
            {
              name = "volume"
            }
          },
          description = "Sets the volume of the Source.",
          link = "https://love2d.org/wiki/Source:setVolume",
          type = "function"
        },
        setVolumeLimits = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              name = "max"
            }
          },
          description = "Sets the volume limits of the source. The limits have to be numbers from 0 to 1.",
          link = "https://love2d.org/wiki/Source:setVolumeLimits",
          type = "function"
        },
        stop = {
          args = {
            {
              name = "self"
            }
          },
          description = "Stops a Source.",
          link = "https://love2d.org/wiki/Source:stop",
          type = "function"
        },
        tell = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[unit]",
              name = "unit"
            }
          },
          description = "Gets the currently playing position of the Source.",
          link = "https://love2d.org/wiki/Source:tell",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    SpriteBatch = {
      fields = {
        add = {
          link = "https://love2d.org/wiki/SpriteBatch:add",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[r]",
                  name = "r"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Add a sprite to the batch."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "quad"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[r]",
                  name = "r"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Add a sprite to the batch."
            }
          }
        },
        attachAttribute = {
          args = {
            {
              name = "self"
            },
            {
              name = "name"
            },
            {
              name = "mesh"
            }
          },
          description = "Attaches a per-vertex attribute from a Mesh onto this SpriteBatch, for use when drawing. This can be combined with a Shader to augment a SpriteBatch with per-vertex or additional per-sprite information instead of just having per-sprite colors.\n\nEach sprite in a SpriteBatch has 4 vertices in the following order: top-left, bottom-left, top-right, bottom-right. The index returned by SpriteBatch:add (and used by SpriteBatch:set) can be multiplied by 4 to determine the first vertex in a specific sprite.",
          link = "https://love2d.org/wiki/SpriteBatch:attachAttribute",
          type = "function"
        },
        clear = {
          args = {
            {
              name = "self"
            }
          },
          description = "Removes all sprites from the buffer.",
          link = "https://love2d.org/wiki/SpriteBatch:clear",
          type = "function"
        },
        flush = {
          args = {
            {
              name = "self"
            }
          },
          description = "Immediately sends all new and modified sprite data in the batch to the graphics card.",
          link = "https://love2d.org/wiki/SpriteBatch:flush",
          type = "function"
        },
        getBufferSize = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the maximum number of sprites the SpriteBatch can hold.",
          link = "https://love2d.org/wiki/SpriteBatch:getBufferSize",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getColor = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the color that will be used for the next add and set operations.\n\nIf no color has been set with SpriteBatch:setColor or the current SpriteBatch color has been cleared, this method will return nil.",
          link = "https://love2d.org/wiki/SpriteBatch:getColor",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the amount of sprites currently in the SpriteBatch.",
          link = "https://love2d.org/wiki/SpriteBatch:getCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getTexture = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the Image or Canvas used by the SpriteBatch.",
          link = "https://love2d.org/wiki/SpriteBatch:getTexture",
          returnTypes = {
            {
              name = "Texture",
              type = "ref"
            }
          },
          type = "function"
        },
        set = {
          link = "https://love2d.org/wiki/SpriteBatch:set",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "id"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[r]",
                  name = "r"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Changes a sprite in the batch. This requires the identifier returned by add and addq."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "id"
                },
                {
                  name = "quad"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[r]",
                  name = "r"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Changes a sprite in the batch. This requires the identifier returned by add and addq."
            }
          }
        },
        setBufferSize = {
          args = {
            {
              name = "self"
            },
            {
              name = "size"
            }
          },
          description = "Sets the maximum number of sprites the SpriteBatch can hold. Existing sprites in the batch (up to the new maximum) will not be cleared when this function is called.",
          link = "https://love2d.org/wiki/SpriteBatch:setBufferSize",
          type = "function"
        },
        setColor = {
          link = "https://love2d.org/wiki/SpriteBatch:setColor",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "r"
                },
                {
                  name = "g"
                },
                {
                  name = "b"
                },
                {
                  displayName = "[a]",
                  name = "a"
                }
              },
              description = "Sets the color that will be used for the next add and set operations. Calling the function without arguments will clear the color.\n\nIn version [[0.9.2]] and older, the global color set with love.graphics.setColor will not work on the SpriteBatch if any of the sprites has its own color."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Disables all per-sprite colors for this SpriteBatch."
            }
          }
        },
        setTexture = {
          args = {
            {
              name = "self"
            },
            {
              name = "texture"
            }
          },
          description = "Replaces the Image or Canvas used for the sprites.",
          link = "https://love2d.org/wiki/SpriteBatch:setTexture",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Text = {
      fields = {
        add = {
          link = "https://love2d.org/wiki/Text:add",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "textstring"
                },
                {
                  displayName = "[x]",
                  name = "x"
                },
                {
                  displayName = "[y]",
                  name = "y"
                },
                {
                  displayName = "[angle]",
                  name = "angle"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Adds additional colored text to the Text object at the specified position."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "coloredtext"
                },
                {
                  displayName = "[x]",
                  name = "x"
                },
                {
                  displayName = "[y]",
                  name = "y"
                },
                {
                  displayName = "[angle]",
                  name = "angle"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Adds additional colored text to the Text object at the specified position."
            }
          }
        },
        addf = {
          link = "https://love2d.org/wiki/Text:addf",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "textstring"
                },
                {
                  name = "wraplimit"
                },
                {
                  name = "align"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[angle]",
                  name = "angle"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Adds additional formatted / colored text to the Text object at the specified position."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "coloredtext"
                },
                {
                  name = "wraplimit"
                },
                {
                  name = "align"
                },
                {
                  name = "x"
                },
                {
                  name = "y"
                },
                {
                  displayName = "[angle]",
                  name = "angle"
                },
                {
                  displayName = "[sx]",
                  name = "sx"
                },
                {
                  displayName = "[sy]",
                  name = "sy"
                },
                {
                  displayName = "[ox]",
                  name = "ox"
                },
                {
                  displayName = "[oy]",
                  name = "oy"
                },
                {
                  displayName = "[kx]",
                  name = "kx"
                },
                {
                  displayName = "[ky]",
                  name = "ky"
                }
              },
              description = "Adds additional formatted / colored text to the Text object at the specified position."
            }
          }
        },
        clear = {
          args = {
            {
              name = "self"
            }
          },
          description = "Clears the contents of the Text object.",
          link = "https://love2d.org/wiki/Text:clear",
          type = "function"
        },
        getDimensions = {
          link = "https://love2d.org/wiki/Text:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the width and height of the text in pixels."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                }
              },
              description = "Gets the width and height of a specific sub-string that was previously added to the Text object."
            }
          }
        },
        getFont = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the Font used with the Text object.",
          link = "https://love2d.org/wiki/Text:getFont",
          returnTypes = {
            {
              name = "Font",
              type = "ref"
            }
          },
          type = "function"
        },
        getHeight = {
          link = "https://love2d.org/wiki/Text:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the height of the text in pixels."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                }
              },
              description = "Gets the height of a specific sub-string that was previously added to the Text object."
            }
          }
        },
        getWidth = {
          link = "https://love2d.org/wiki/Text:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Gets the width of the text in pixels."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "index"
                }
              },
              description = "Gets the width of a specific sub-string that was previously added to the Text object."
            }
          }
        },
        set = {
          link = "https://love2d.org/wiki/Text:set",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "textstring"
                }
              },
              description = "Replaces the contents of the Text object with a new unformatted string."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "coloredtext"
                }
              },
              description = "Replaces the contents of the Text object with a new unformatted string."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Clears the contents of the Text object."
            }
          }
        },
        setFont = {
          args = {
            {
              name = "self"
            },
            {
              name = "font"
            }
          },
          description = "Replaces the Font used with the text.",
          link = "https://love2d.org/wiki/Text:setFont",
          type = "function"
        },
        setf = {
          link = "https://love2d.org/wiki/Text:setf",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "textstring"
                },
                {
                  name = "wraplimit"
                },
                {
                  name = "align"
                }
              },
              description = "Replaces the contents of the Text object with a new formatted string."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "coloredtext"
                },
                {
                  name = "wraplimit"
                },
                {
                  name = "align"
                }
              },
              description = "Replaces the contents of the Text object with a new formatted string."
            },
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Clears the contents of the Text object."
            }
          }
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Texture = {
      fields = {},
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Thread = {
      fields = {
        getError = {
          args = {
            {
              name = "self"
            }
          },
          description = "Retrieves the error string from the thread if it produced an error.",
          link = "https://love2d.org/wiki/Thread:getError",
          returnTypes = {
            {
              type = "string"
            }
          },
          type = "function"
        },
        isRunning = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns whether the thread is currently running.\n\nThreads which are not running can be (re)started with Thread:start.",
          link = "https://love2d.org/wiki/Thread:isRunning",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        start = {
          link = "https://love2d.org/wiki/Thread:start",
          type = "function",
          variants = {
            {
              args = {
                {
                  name = "self"
                }
              },
              description = "Starts the thread.\n\nThreads can be restarted after they have completed their execution."
            },
            {
              args = {
                {
                  name = "self"
                },
                {
                  name = "arg1"
                },
                {
                  name = "arg2"
                },
                {
                  name = "..."
                }
              },
              description = "Starts the thread.\n\nThreads can be restarted after they have completed their execution."
            }
          }
        },
        wait = {
          args = {
            {
              name = "self"
            }
          },
          description = "Wait for a thread to finish. This call will block until the thread finishes.",
          link = "https://love2d.org/wiki/Thread:wait",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    Video = {
      fields = {
        getDimensions = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width and height of the Video in pixels.",
          link = "https://love2d.org/wiki/Video:getDimensions",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the scaling filters used when drawing the Video.",
          link = "https://love2d.org/wiki/Video:getFilter",
          returnTypes = {
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              name = "FilterMode",
              type = "ref"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getHeight = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the height of the Video in pixels.",
          link = "https://love2d.org/wiki/Video:getHeight",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSource = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the audio Source used for playing back the video's audio. May return nil if the video has no audio, or if Video:setSource is called with a nil argument.",
          link = "https://love2d.org/wiki/Video:getSource",
          returnTypes = {
            {
              name = "Source",
              type = "ref"
            }
          },
          type = "function"
        },
        getStream = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the VideoStream object used for decoding and controlling the video.",
          link = "https://love2d.org/wiki/Video:getStream",
          returnTypes = {
            {
              name = "VideoStream",
              type = "ref"
            }
          },
          type = "function"
        },
        getWidth = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the width of the Video in pixels.",
          link = "https://love2d.org/wiki/Video:getWidth",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        isPlaying = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the Video is currently playing.",
          link = "https://love2d.org/wiki/Video:isPlaying",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        pause = {
          args = {
            {
              name = "self"
            }
          },
          description = "Pauses the Video.",
          link = "https://love2d.org/wiki/Video:pause",
          type = "function"
        },
        play = {
          args = {
            {
              name = "self"
            }
          },
          description = "Starts playing the Video. In order for the video to appear onscreen it must be drawn with love.graphics.draw.",
          link = "https://love2d.org/wiki/Video:play",
          type = "function"
        },
        rewind = {
          args = {
            {
              name = "self"
            }
          },
          description = "Rewinds the Video to the beginning.",
          link = "https://love2d.org/wiki/Video:rewind",
          type = "function"
        },
        seek = {
          args = {
            {
              name = "self"
            },
            {
              name = "offset"
            }
          },
          description = "Sets the current playback position of the Video.",
          link = "https://love2d.org/wiki/Video:seek",
          type = "function"
        },
        setFilter = {
          args = {
            {
              name = "self"
            },
            {
              name = "min"
            },
            {
              name = "mag"
            },
            {
              displayName = "[anisotropy]",
              name = "anisotropy"
            }
          },
          description = "Sets the scaling filters used when drawing the Video.",
          link = "https://love2d.org/wiki/Video:setFilter",
          type = "function"
        },
        setSource = {
          args = {
            {
              name = "self"
            },
            {
              displayName = "[source]",
              name = "source"
            }
          },
          description = "Sets the audio Source used for playing back the video's audio. The audio Source also controls playback speed and synchronization.",
          link = "https://love2d.org/wiki/Video:setSource",
          type = "function"
        },
        tell = {
          args = {
            {
              name = "self"
            },
            {
              name = "seconds"
            }
          },
          description = "Gets the current playback position of the Video.",
          link = "https://love2d.org/wiki/Video:tell",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Drawable",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    VideoStream = {
      fields = {},
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    WeldJoint = {
      fields = {
        getDampingRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the damping ratio of the joint.",
          link = "https://love2d.org/wiki/WeldJoint:getDampingRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getFrequency = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the frequency.",
          link = "https://love2d.org/wiki/WeldJoint:getFrequency",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setDampingRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "The new damping ratio.",
          link = "https://love2d.org/wiki/WeldJoint:setDampingRatio",
          type = "function"
        },
        setFrequency = {
          args = {
            {
              name = "self"
            },
            {
              name = "freq"
            }
          },
          description = "Sets a new frequency.",
          link = "https://love2d.org/wiki/WeldJoint:setFrequency",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    WheelJoint = {
      fields = {
        getAxis = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets the world-space axis vector of the Wheel Joint.",
          link = "https://love2d.org/wiki/WheelJoint:getAxis",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the current joint translation speed.",
          link = "https://love2d.org/wiki/WheelJoint:getJointSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointTranslation = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the current joint translation.",
          link = "https://love2d.org/wiki/WheelJoint:getJointTranslation",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMaxMotorTorque = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the maximum motor torque.",
          link = "https://love2d.org/wiki/WheelJoint:getMaxMotorTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorSpeed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the speed of the motor.",
          link = "https://love2d.org/wiki/WheelJoint:getMotorSpeed",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getMotorTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "invdt"
            }
          },
          description = "Returns the current torque on the motor.",
          link = "https://love2d.org/wiki/WheelJoint:getMotorTorque",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpringDampingRatio = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the damping ratio.",
          link = "https://love2d.org/wiki/WheelJoint:getSpringDampingRatio",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getSpringFrequency = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the spring frequency.",
          link = "https://love2d.org/wiki/WheelJoint:getSpringFrequency",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        setMaxMotorTorque = {
          args = {
            {
              name = "self"
            },
            {
              name = "maxTorque"
            }
          },
          description = "Sets a new maximum motor torque.",
          link = "https://love2d.org/wiki/WheelJoint:setMaxMotorTorque",
          type = "function"
        },
        setMotorEnabled = {
          args = {
            {
              name = "self"
            },
            {
              name = "enable"
            }
          },
          description = "Starts and stops the joint motor.",
          link = "https://love2d.org/wiki/WheelJoint:setMotorEnabled",
          type = "function"
        },
        setMotorSpeed = {
          args = {
            {
              name = "self"
            },
            {
              name = "speed"
            }
          },
          description = "Sets a new speed for the motor.",
          link = "https://love2d.org/wiki/WheelJoint:setMotorSpeed",
          type = "function"
        },
        setSpringDampingRatio = {
          args = {
            {
              name = "self"
            },
            {
              name = "ratio"
            }
          },
          description = "Sets a new damping ratio.",
          link = "https://love2d.org/wiki/WheelJoint:setSpringDampingRatio",
          type = "function"
        },
        setSpringFrequency = {
          args = {
            {
              name = "self"
            },
            {
              name = "freq"
            }
          },
          description = "Sets a new spring frequency.",
          link = "https://love2d.org/wiki/WheelJoint:setSpringFrequency",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Joint",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    },
    World = {
      fields = {
        destroy = {
          args = {
            {
              name = "self"
            }
          },
          description = "Destroys the world, taking all bodies, joints, fixtures and their shapes with it.\n\nAn error will occur if you attempt to use any of the destroyed objects after calling this function.",
          link = "https://love2d.org/wiki/World:destroy",
          type = "function"
        },
        getBodyCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the number of bodies in the world.",
          link = "https://love2d.org/wiki/World:getBodyCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getBodyList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns a table with all bodies.",
          link = "https://love2d.org/wiki/World:getBodyList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getCallbacks = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns functions for the callbacks during the world update.",
          link = "https://love2d.org/wiki/World:getCallbacks",
          returnTypes = {
            {
              type = "function"
            },
            {
              type = "function"
            },
            {
              type = "function"
            },
            {
              type = "function"
            }
          },
          type = "function"
        },
        getContactCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the number of contacts in the world.",
          link = "https://love2d.org/wiki/World:getContactCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getContactFilter = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the function for collision filtering.",
          link = "https://love2d.org/wiki/World:getContactFilter",
          returnTypes = {
            {
              type = "function"
            }
          },
          type = "function"
        },
        getContactList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns a table with all contacts.",
          link = "https://love2d.org/wiki/World:getContactList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        getGravity = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the gravity of the world.",
          link = "https://love2d.org/wiki/World:getGravity",
          returnTypes = {
            {
              type = "number"
            },
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointCount = {
          args = {
            {
              name = "self"
            }
          },
          description = "Get the number of joints in the world.",
          link = "https://love2d.org/wiki/World:getJointCount",
          returnTypes = {
            {
              type = "number"
            }
          },
          type = "function"
        },
        getJointList = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns a table with all joints.",
          link = "https://love2d.org/wiki/World:getJointList",
          returnTypes = {
            {
              type = "table"
            }
          },
          type = "function"
        },
        isDestroyed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Gets whether the World is destroyed. Destroyed worlds cannot be used.",
          link = "https://love2d.org/wiki/World:isDestroyed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isLocked = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns if the world is updating its state.\n\nThis will return true inside the callbacks from World:setCallbacks.",
          link = "https://love2d.org/wiki/World:isLocked",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        isSleepingAllowed = {
          args = {
            {
              name = "self"
            }
          },
          description = "Returns the sleep behaviour of the world.",
          link = "https://love2d.org/wiki/World:isSleepingAllowed",
          returnTypes = {
            {
              type = "boolean"
            }
          },
          type = "function"
        },
        queryBoundingBox = {
          args = {
            {
              name = "self"
            },
            {
              name = "topLeftX"
            },
            {
              name = "topLeftY"
            },
            {
              name = "bottomRightX"
            },
            {
              name = "bottomRightY"
            },
            {
              name = "callback"
            }
          },
          description = "Calls a function for each fixture inside the specified area.",
          link = "https://love2d.org/wiki/World:queryBoundingBox",
          type = "function"
        },
        rayCast = {
          args = {
            {
              name = "self"
            },
            {
              name = "x1"
            },
            {
              name = "y1"
            },
            {
              name = "x2"
            },
            {
              name = "y2"
            },
            {
              name = "callback"
            }
          },
          description = "Casts a ray and calls a function for each fixtures it intersects.",
          link = "https://love2d.org/wiki/World:rayCast",
          type = "function"
        },
        setCallbacks = {
          args = {
            {
              name = "self"
            },
            {
              name = "beginContact"
            },
            {
              name = "endContact"
            },
            {
              name = "preSolve"
            },
            {
              name = "postSolve"
            }
          },
          description = "Sets functions for the collision callbacks during the world update.\n\nFour Lua functions can be given as arguments. The value nil removes a function.\n\nWhen called, each function will be passed three arguments. The first two arguments are the colliding fixtures and the third argument is the Contact between them. The PostSolve callback additionally gets the normal and tangent impulse for each contact point.",
          link = "https://love2d.org/wiki/World:setCallbacks",
          type = "function"
        },
        setContactFilter = {
          args = {
            {
              name = "self"
            },
            {
              name = "filter"
            }
          },
          description = "Sets a function for collision filtering.\n\nIf the group and category filtering doesn't generate a collision decision, this function gets called with the two fixtures as arguments. The function should return a boolean value where true means the fixtures will collide and false means they will pass through each other.",
          link = "https://love2d.org/wiki/World:setContactFilter",
          type = "function"
        },
        setGravity = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Set the gravity of the world.",
          link = "https://love2d.org/wiki/World:setGravity",
          type = "function"
        },
        setSleepingAllowed = {
          args = {
            {
              name = "self"
            },
            {
              name = "allowSleep"
            }
          },
          description = "Set the sleep behaviour of the world.\n\nA sleeping body is much more efficient to simulate than when awake.\n\nIf sleeping is allowed, any body that has come to rest will sleep.",
          link = "https://love2d.org/wiki/World:setSleepingAllowed",
          type = "function"
        },
        translateOrigin = {
          args = {
            {
              name = "self"
            },
            {
              name = "x"
            },
            {
              name = "y"
            }
          },
          description = "Translates the World's origin. Useful in large worlds where floating point precision issues become noticeable at far distances from the origin.",
          link = "https://love2d.org/wiki/World:translateOrigin",
          type = "function"
        },
        update = {
          args = {
            {
              name = "self"
            },
            {
              name = "dt"
            }
          },
          description = "Update the state of the world.",
          link = "https://love2d.org/wiki/World:update",
          type = "function"
        }
      },
      metatable = {
        fields = {
          __index = {
            name = "Object",
            type = "ref"
          }
        },
        type = "table"
      },
      type = "table"
    }
  },
  packagePath = "./?.lua,./?/init.lua"
}