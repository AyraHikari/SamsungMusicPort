.class final Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;->this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 4

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;->this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;->$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0f02c4

    .line 24
    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;->invoke()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
