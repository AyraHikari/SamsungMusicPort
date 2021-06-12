.class Lcom/facebook/internal/FileLruCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->postTrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$3;->this$0:Lcom/facebook/internal/FileLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$3;->this$0:Lcom/facebook/internal/FileLruCache;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->access$200(Lcom/facebook/internal/FileLruCache;)V

    return-void
.end method
