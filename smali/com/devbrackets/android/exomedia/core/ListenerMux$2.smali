.class Lcom/devbrackets/android/exomedia/core/ListenerMux$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devbrackets/android/exomedia/core/ListenerMux;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/ListenerMux;


# direct methods
.method constructor <init>(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;->a:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;->a:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Lcom/devbrackets/android/exomedia/core/ListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;->a:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Lcom/devbrackets/android/exomedia/core/ListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;->a()V

    :cond_0
    return-void
.end method
