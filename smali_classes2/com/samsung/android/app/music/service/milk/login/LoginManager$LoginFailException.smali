.class public Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginFailException"
.end annotation


# instance fields
.field private final errorCode:I

.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;I)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->this$0:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 847
    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 851
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->errorCode:I

    return v0
.end method
