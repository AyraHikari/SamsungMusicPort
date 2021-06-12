.class public final enum Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/schedule/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;",
        ">;",
        "Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field public static final enum API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field public static final enum CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field public static final enum CARD_DISMISS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field public static final enum CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field public static final enum FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 153
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v1, "CARD_BASIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 154
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v1, "CARD_DISMISS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_DISMISS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 155
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v1, "FEEDBACK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 156
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v1, "API_CALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 157
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v1, "CUSTOM_FEEDBACK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 152
    new-array v0, v7, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_DISMISS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->value:I

    return-void
.end method

.method public static getEvent(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;
    .locals 3

    .line 171
    const-class v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 172
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->number()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;
    .locals 1

    .line 152
    const-class v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;
    .locals 1

    .line 152
    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    return-object v0
.end method


# virtual methods
.method public number()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->value:I

    return v0
.end method
