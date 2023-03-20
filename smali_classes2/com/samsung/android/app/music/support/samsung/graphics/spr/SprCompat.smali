.class public Lcom/samsung/android/app/music/support/samsung/graphics/spr/SprCompat;
.super Ljava/lang/Object;
.source "SprCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static isSpr(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    instance-of p0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
