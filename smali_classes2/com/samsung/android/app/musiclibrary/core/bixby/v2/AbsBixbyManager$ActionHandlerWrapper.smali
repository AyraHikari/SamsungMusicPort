.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;
.super Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ActionHandlerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 6

    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAction() - actionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", responseCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "params"

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_3

    .line 80
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_1
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->THROW_EXCEPTION:Z

    if-nez v2, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Let WON-GI CHAE know if you get this exception! (this caused by multiple or zero args. count: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->convertToCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    move-result-object p2

    .line 97
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;

    if-eqz p3, :cond_4

    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAction() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "executeAction() - null commandExecutor."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->THROW_EXCEPTION:Z

    if-nez p1, :cond_5

    :goto_1
    return-void

    .line 112
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should assign proper executor for action."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_6
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "executeAction() - null object."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
