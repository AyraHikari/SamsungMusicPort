.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0

    .line 135
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method
