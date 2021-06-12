.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0

    .line 156
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method
