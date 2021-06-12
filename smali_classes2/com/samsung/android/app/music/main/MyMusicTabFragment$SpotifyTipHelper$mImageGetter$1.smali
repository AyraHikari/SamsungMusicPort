.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$mImageGetter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$mImageGetter$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 576
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "icon"

    .line 577
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$mImageGetter$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0202c9

    .line 579
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "res.getDrawable(R.drawab\u2026aylists_ic_spotify, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 580
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f10086e

    .line 582
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-nez v1, :cond_1

    .line 583
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-object v1
.end method
