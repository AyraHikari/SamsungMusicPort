.class Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$1;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAppStateRequested()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
