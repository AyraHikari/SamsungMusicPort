.class public final enum Lkotlin/Experimental$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/Experimental$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/Experimental$Level;

.field public static final enum ERROR:Lkotlin/Experimental$Level;

.field public static final enum WARNING:Lkotlin/Experimental$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Experimental$Level;

    new-instance v1, Lkotlin/Experimental$Level;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/Experimental$Level;->WARNING:Lkotlin/Experimental$Level;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/Experimental$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/Experimental$Level;->ERROR:Lkotlin/Experimental$Level;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/Experimental$Level;->$VALUES:[Lkotlin/Experimental$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/Experimental$Level;
    .locals 1

    const-class v0, Lkotlin/Experimental$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/Experimental$Level;

    return-object p0
.end method

.method public static values()[Lkotlin/Experimental$Level;
    .locals 1

    sget-object v0, Lkotlin/Experimental$Level;->$VALUES:[Lkotlin/Experimental$Level;

    invoke-virtual {v0}, [Lkotlin/Experimental$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Experimental$Level;

    return-object v0
.end method
