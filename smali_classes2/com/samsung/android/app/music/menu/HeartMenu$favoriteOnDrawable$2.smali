.class final Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/HeartMenu;-><init>(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/menu/HeartMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/menu/HeartMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;->this$0:Lcom/samsung/android/app/music/menu/HeartMenu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;->this$0:Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/HeartMenu;->a(Lcom/samsung/android/app/music/menu/HeartMenu;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;->this$0:Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/HeartMenu;->b(Lcom/samsung/android/app/music/menu/HeartMenu;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;->invoke()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
