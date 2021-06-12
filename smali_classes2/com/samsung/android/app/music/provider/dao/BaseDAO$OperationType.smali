.class public final enum Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

.field public static final enum DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

.field public static final enum INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

.field public static final enum NONE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

.field public static final enum UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->NONE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    new-instance v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    const-string v1, "INSERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    new-instance v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    const-string v1, "DELETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    new-instance v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    const-string v1, "UPDATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    const/4 v0, 0x4

    .line 161
    new-array v0, v0, [Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    sget-object v1, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->NONE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->$VALUES:[Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;
    .locals 1

    .line 161
    const-class v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;
    .locals 1

    .line 161
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->$VALUES:[Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    return-object v0
.end method
