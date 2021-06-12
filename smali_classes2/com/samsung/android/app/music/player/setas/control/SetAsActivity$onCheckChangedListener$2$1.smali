.class final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;->invoke()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->h(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->c()Z

    move-result p2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->f(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->c()Z

    move-result v0

    const-string v1, "SetAs-SetAsActivity"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCheckChangedListener recommend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->b_:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method
