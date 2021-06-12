.class public final Lcom/samsung/android/app/music/background/BlurBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;->INSTANCE:Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lcom/samsung/android/app/music/background/BlurBackground;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
