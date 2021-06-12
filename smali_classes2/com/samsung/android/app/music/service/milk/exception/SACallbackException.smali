.class public Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private final mErrorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "unknown"

    .line 8
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;->mErrorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method
