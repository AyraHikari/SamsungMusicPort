.class public abstract Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_BACKGROUND:Ljava/lang/String; = "background"

.field public static final ACTION_PUNCH_OUT:Ljava/lang/String; = "punchOut"

.field public static final ACTION_TYPE:Ljava/lang/String; = "actionType"

.field public static final PARAMS:Ljava/lang/String; = "params"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .param p4    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
