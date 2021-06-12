.class Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;
.super Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapCompatApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1
.end method
