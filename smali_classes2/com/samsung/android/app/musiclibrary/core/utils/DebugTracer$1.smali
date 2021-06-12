.class Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;)V

    return-void
.end method
