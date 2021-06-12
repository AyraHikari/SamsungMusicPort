.class public Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsListViewSdlCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;-><init>(Landroid/content/Context;)V

    .line 52
    const-class p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    :try_start_0
    const-string v1, "mTwDragBlockImage"

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    .line 62
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPenSelectDragBlockImage() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static semEnableGoToTop(Landroid/widget/AbsListView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fe

    if-lt v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semEnableGoToTop(Z)V

    :cond_0
    return-void
.end method

.method public static twSetFluidScrollEnabled(Landroid/widget/AbsListView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->twSetFluidScrollEnabled(Z)V

    :cond_0
    return-void
.end method
