.class public final enum Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;
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
    name = "CommonEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;",
        ">;",
        "Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum HANDLE_INCOMPLETE_PUSH_EVENTS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum HANDLE_PUSH_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field public static final enum SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 124
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "SEND_TRACKING_DATA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 125
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "SEND_UPDATED_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 126
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "SEND_DEREG_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 127
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "HANDLE_PUSH_DATA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_PUSH_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 128
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "HANDLE_INCOMPLETE_PUSH_EVENTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_INCOMPLETE_PUSH_EVENTS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 129
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "HANDLE_APP_UPDATE_EVENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 130
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const-string v1, "SEND_FORCE_REG_DATA"

    const/16 v9, 0xe

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    const/4 v0, 0x7

    .line 123
    new-array v0, v0, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_PUSH_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_INCOMPLETE_PUSH_EVENTS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->value:I

    return-void
.end method

.method public static getEvent(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;
    .locals 3

    .line 144
    const-class v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

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

    check-cast v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->number()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;
    .locals 1

    .line 123
    const-class v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;
    .locals 1

    .line 123
    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    return-object v0
.end method


# virtual methods
.method public number()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->value:I

    return v0
.end method
