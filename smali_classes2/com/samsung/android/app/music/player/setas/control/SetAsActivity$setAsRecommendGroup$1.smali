.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;
.super Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "RecommendGroup"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SetAs-SetAsActivity"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b()V

    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)J

    move-result-wide v2

    const v4, 0x7f13054e

    const/4 v5, 0x0

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(JZZ)V

    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 121
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->sendAccessibilityEvent(I)V

    :cond_3
    return-void
.end method
