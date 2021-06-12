.class Lcom/facebook/AccessTokenManager$RefreshResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshResult"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public dataAccessExpirationTime:Ljava/lang/Long;

.field public expiresAt:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenManager$1;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$RefreshResult;-><init>()V

    return-void
.end method
