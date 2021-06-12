.class Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "ToolTipView"

    const-string p2, "onLayoutChange. anchor layout changed."

    .line 124
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a(Lcom/samsung/android/app/music/browse/widget/ToolTipView;Z)Z

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b(Lcom/samsung/android/app/music/browse/widget/ToolTipView;Z)Z

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)V

    return-void
.end method
