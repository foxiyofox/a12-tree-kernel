// kernel/ksu_stub.c
#include <linux/kernel.h>

// Stub para ksu_handle_devpts
bool ksu_handle_devpts(struct inode *inode, struct dentry *dentry)
{
    return false;
}
EXPORT_SYMBOL(ksu_handle_devpts);