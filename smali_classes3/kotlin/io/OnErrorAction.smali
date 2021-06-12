.class public final enum Lkotlin/io/OnErrorAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/OnErrorAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/io/OnErrorAction;

.field public static final enum SKIP:Lkotlin/io/OnErrorAction;

.field public static final enum TERMINATE:Lkotlin/io/OnErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/io/OnErrorAction;

    new-instance v1, Lkotlin/io/OnErrorAction;

    const-string v2, "SKIP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/io/OnErrorAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/io/OnErrorAction;->SKIP:Lkotlin/io/OnErrorAction;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/io/OnErrorAction;

    const-string v2, "TERMINATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/io/OnErrorAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/io/OnErrorAction;->$VALUES:[Lkotlin/io/OnErrorAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/OnErrorAction;
    .locals 1

    const-class v0, Lkotlin/io/OnErrorAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/io/OnErrorAction;

    return-object p0
.end method

.method public static values()[Lkotlin/io/OnErrorAction;
    .locals 1

    sget-object v0, Lkotlin/io/OnErrorAction;->$VALUES:[Lkotlin/io/OnErrorAction;

    invoke-virtual {v0}, [Lkotlin/io/OnErrorAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/io/OnErrorAction;

    return-object v0
.end method
