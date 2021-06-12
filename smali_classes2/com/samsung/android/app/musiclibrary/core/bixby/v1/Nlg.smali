.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAttribute:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNeedUserAction:Z

.field private mResultName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResultValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mNeedUserAction:Z

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAttribute()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getResultName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultName:Ljava/lang/String;

    return-object v0
.end method

.method getResultValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultValue:Ljava/lang/String;

    return-object v0
.end method

.method getState()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mState:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method isNeedUserAction()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mNeedUserAction:Z

    return v0
.end method

.method public setNeedUserAction(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mNeedUserAction:Z

    return-void
.end method

.method public setResultParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultValue:Ljava/lang/String;

    return-void
.end method

.method public setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mAttribute:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NLG - state: "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attribute: "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mAttribute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", resultName: "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultValue: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->mResultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
