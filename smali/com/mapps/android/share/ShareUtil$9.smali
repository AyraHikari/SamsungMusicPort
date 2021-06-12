.class Lcom/mapps/android/share/ShareUtil$9;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$9;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$9;->val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

    .line 482
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 487
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$9;->val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

    invoke-interface {v1, v0}, Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;->AdViewCodeComplete(Z)V

    .line 491
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
