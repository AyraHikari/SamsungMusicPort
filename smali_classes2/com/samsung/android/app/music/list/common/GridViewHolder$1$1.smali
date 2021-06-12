.class public final Lcom/samsung/android/app/music/list/common/GridViewHolder$1$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/GridViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder$1$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder$1$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 34
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
