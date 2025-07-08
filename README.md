Intel GPU device driver for 2D graphics.

git clone https://github.com/uzougochukwu/2d_gpu/tree/master

cd 2d_gpu/src/lib/framebuffer/

then

./initialise_with_drm

the 'hi there!' that you see is to prove that the code at least runs...
make sure you run initialise_without_drm in a virtual machine as it causes a protection fault if run from userspace (supposedly) 