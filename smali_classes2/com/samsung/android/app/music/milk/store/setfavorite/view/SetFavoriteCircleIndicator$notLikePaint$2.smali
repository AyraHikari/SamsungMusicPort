.class final Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;->INSTANCE:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 3

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;->invoke()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
