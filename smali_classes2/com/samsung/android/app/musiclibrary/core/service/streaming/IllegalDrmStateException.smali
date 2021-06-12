.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalDrmState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;->mErrorCode:I

    return v0
.end method
