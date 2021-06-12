.class public abstract Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    .line 18
    new-array p1, p1, [Landroid/net/Uri;

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
