.class public Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign-in(SA token) or DeviceRegister api is not success"

    return-object v0
.end method
