.class synthetic Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->values()[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    :try_start_0
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
