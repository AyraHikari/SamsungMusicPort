.class final Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    const-string v0, "Ui"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onMultiWindowModeChangedListener onMultiWindowModeChanged isInMultiWindowMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->access$getNavigationBarController$p(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)Lcom/samsung/android/app/music/view/NavigationBarController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NavigationBarController;->b()V

    :cond_0
    return-void
.end method
