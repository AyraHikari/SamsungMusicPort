.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/PopupWindow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/PopupWindow;
    .locals 3

    .line 77
    new-instance v0, Landroid/widget/PopupWindow;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->g(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    .line 77
    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f1101c4

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;->invoke()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method
