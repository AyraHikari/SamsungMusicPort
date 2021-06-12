.class Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->setVisibility(I)V

    const-string v0, "ToolTipView"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToolTip. anchor view layout done. applied - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;->a:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
