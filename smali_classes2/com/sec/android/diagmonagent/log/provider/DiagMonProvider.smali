.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
.super Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->onCreate()Z

    move-result v0

    return v0
.end method
