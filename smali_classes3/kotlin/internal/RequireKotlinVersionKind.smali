.class public final enum Lkotlin/internal/RequireKotlinVersionKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/internal/RequireKotlinVersionKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum API_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum COMPILER_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum LANGUAGE_VERSION:Lkotlin/internal/RequireKotlinVersionKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/internal/RequireKotlinVersionKind;

    new-instance v1, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v2, "LANGUAGE_VERSION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/RequireKotlinVersionKind;->LANGUAGE_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v2, "COMPILER_VERSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/RequireKotlinVersionKind;->COMPILER_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v2, "API_VERSION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/RequireKotlinVersionKind;->API_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/internal/RequireKotlinVersionKind;
    .locals 1

    const-class v0, Lkotlin/internal/RequireKotlinVersionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/internal/RequireKotlinVersionKind;

    return-object p0
.end method

.method public static values()[Lkotlin/internal/RequireKotlinVersionKind;
    .locals 1

    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

    invoke-virtual {v0}, [Lkotlin/internal/RequireKotlinVersionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/internal/RequireKotlinVersionKind;

    return-object v0
.end method
