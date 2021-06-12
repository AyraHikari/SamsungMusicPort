.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mSuccess:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mSuccess:Z

    .line 20
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    return-void
.end method


# virtual methods
.method getNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    return-object v0
.end method

.method isSuccess()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Result - success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nlg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    .line 35
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
