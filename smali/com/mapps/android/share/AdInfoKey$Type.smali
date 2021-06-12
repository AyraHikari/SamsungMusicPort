.class public final enum Lcom/mapps/android/share/AdInfoKey$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/share/AdInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapps/android/share/AdInfoKey$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mapps/android/share/AdInfoKey$Type;

.field public static final enum GET:Lcom/mapps/android/share/AdInfoKey$Type;

.field public static final enum POST:Lcom/mapps/android/share/AdInfoKey$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/mapps/android/share/AdInfoKey$Type;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/share/AdInfoKey$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapps/android/share/AdInfoKey$Type;->GET:Lcom/mapps/android/share/AdInfoKey$Type;

    new-instance v0, Lcom/mapps/android/share/AdInfoKey$Type;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mapps/android/share/AdInfoKey$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapps/android/share/AdInfoKey$Type;->POST:Lcom/mapps/android/share/AdInfoKey$Type;

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [Lcom/mapps/android/share/AdInfoKey$Type;

    sget-object v1, Lcom/mapps/android/share/AdInfoKey$Type;->GET:Lcom/mapps/android/share/AdInfoKey$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mapps/android/share/AdInfoKey$Type;->POST:Lcom/mapps/android/share/AdInfoKey$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mapps/android/share/AdInfoKey$Type;->ENUM$VALUES:[Lcom/mapps/android/share/AdInfoKey$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapps/android/share/AdInfoKey$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/mapps/android/share/AdInfoKey$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapps/android/share/AdInfoKey$Type;

    return-object p0
.end method

.method public static values()[Lcom/mapps/android/share/AdInfoKey$Type;
    .locals 4

    .line 1
    sget-object v0, Lcom/mapps/android/share/AdInfoKey$Type;->ENUM$VALUES:[Lcom/mapps/android/share/AdInfoKey$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/mapps/android/share/AdInfoKey$Type;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
