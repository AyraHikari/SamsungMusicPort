.class final Lcom/samsung/android/app/music/main/MyMusicModeTipTask$imageGetter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicModeTipTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$imageGetter$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 24
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "icon"

    .line 25
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$imageGetter$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->b(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0202bd

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "res.getDrawable(R.drawab\u2026ic_kr_tab_discover, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f100661

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v1, :cond_0

    .line 30
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v2, 0x7f0f004b

    .line 31
    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-object v1
.end method
