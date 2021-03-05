# README for `image_rotation`

This is a proof-of-concept image rotation workflow based on the [orient_image](https://github.com/pulibrary/pulfa-sausage-factory/blob/master/bin/orient_image.sh) script from PULFA workflows.  

## Instructions

1. Populate a manifest with a list of images to test rotation on.  The manifest should contain the [absolute path](https://www.computerhope.com/jargon/a/absopath.htm) to each image on the server, including the image filename and extension.  

  Example:
  ```text
  /Volumes/MyDrive/c0038/00000001.tif
  /Volumes/MyDrive/c0038/00000002.tif
  /Volumes/MyDrive/c0038/00000003.tif
  /Volumes/MyDrive/c0038/00000004.tif
  /Volumes/MyDrive/c0038/00000005.tif
  /Volumes/MyDrive/c0038/00000006.tif
  /Volumes/MyDrive/c0038/00000007.tif
  ```
  The script will operate on each image listed, in the order in which they are listed in the manifest.

  You can create a manifest at the command line as follows:

  ```bash
  $ ls /Volumes/MyDrive/c0038/*.tif > manifest
  ```

  This will create a manifest file called `manifest` in the directory from which you run the `ls` command.

2. Run the script as follows:

  ```bash
  $ ./iterate.sh $MANIFEST
  ```

  Where `$MANIFEST` is the path to the manifest you want to run the script on.

  You should see output something like the following:

  ```bash
  ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
working on /Volumes/MyDrive/c0038/00000001.tif
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
done on /Volumes/MyDrive/c0038/00000001.tif
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
working on /Volumes/MyDrive/c0038/00000002.tif
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
done on /Volumes/MyDrive/c0038/00000002.tif
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
working on /Volumes/MyDrive/c0038/00000003.tif
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
ocrad: bad magic number - not a pbm, pgm or ppm file.
done on /Volumes/MyDrive/c0038/00000003.tif
  ```

  NOTE: the `ocrad` "bad magic number" message will only display if you are operating on images that are not pbm, pgm, or ppm files.  This should not prevent the script from running.

3. Once the script is done, spot-check the images which have been rotated in place.
