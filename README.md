# Docker `arcoreimg`

ARCore SDK's `arcoreimg` tool as an executable Docker image.

# Usage

### To check image quality score:

    docker run --rm \
        -v $(pwd):/arcoreimg \
        panosmz/arcoreimg eval-img --input_image_path=your-image.jpg

    # output: Score 0-100 or 'Failed to get enough keypoints from target image.'

### To create an image database file:

    docker run --rm \
        -v $(pwd):/arcoreimg \
        panosmz/arcoreimg build-db \
            --input_images_directory=./images \
            --output_db_path=./myimages.imgdb

    # Image database generated at: ./myimages.imgdb
    # Image list file generated at: ./myimages.imgdb-imglist.txt

Read the [documentation](https://developers.google.com/ar/develop/c/augmented-images/arcoreimg) for `arcoreimg` tool usage and more examples.

# Acknowledgements

The `arcoreimg` tool is part of the *ARCore SDK for Android*.

* [ARCore SDK for Android ](https://github.com/google-ar/arcore-android-sdk)
