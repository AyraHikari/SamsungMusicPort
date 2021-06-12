.class public final enum Lkotlin/annotation/AnnotationTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/annotation/AnnotationTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/annotation/AnnotationTarget;

.field public static final enum ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

.field public static final enum EXPRESSION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FIELD:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FILE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FUNCTION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPEALIAS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/annotation/AnnotationTarget;

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "CLASS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "ANNOTATION_CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "TYPE_PARAMETER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "FIELD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->FIELD:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "LOCAL_VARIABLE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "VALUE_PARAMETER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "CONSTRUCTOR"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "FUNCTION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY_GETTER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY_SETTER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "TYPE"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->TYPE:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "EXPRESSION"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->EXPRESSION:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "FILE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->FILE:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "TYPEALIAS"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->TYPEALIAS:Lkotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->$VALUES:[Lkotlin/annotation/AnnotationTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/annotation/AnnotationTarget;
    .locals 1

    const-class v0, Lkotlin/annotation/AnnotationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/annotation/AnnotationTarget;

    return-object p0
.end method

.method public static values()[Lkotlin/annotation/AnnotationTarget;
    .locals 1

    sget-object v0, Lkotlin/annotation/AnnotationTarget;->$VALUES:[Lkotlin/annotation/AnnotationTarget;

    invoke-virtual {v0}, [Lkotlin/annotation/AnnotationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/annotation/AnnotationTarget;

    return-object v0
.end method
