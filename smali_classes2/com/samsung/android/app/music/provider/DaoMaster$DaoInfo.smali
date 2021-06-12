.class Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaoInfo"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/samsung/android/app/music/provider/dao/BaseDAO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
            "*>;III)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d:Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    .line 53
    iput p2, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a:I

    .line 54
    iput p4, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->c:I

    .line 55
    iput p3, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->b:I

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
            "*>;III)",
            "Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;-><init>(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->c:I

    return v0
.end method

.method public d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
            "*>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d:Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    return-object v0
.end method
