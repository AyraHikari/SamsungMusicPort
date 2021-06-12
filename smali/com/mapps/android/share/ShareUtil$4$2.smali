.class Lcom/mapps/android/share/ShareUtil$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$4;

.field private final synthetic val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$4;Lcom/mapps/android/share/GetAdvertisingIdTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$4$2;->this$1:Lcom/mapps/android/share/ShareUtil$4;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$4$2;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4$2;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
