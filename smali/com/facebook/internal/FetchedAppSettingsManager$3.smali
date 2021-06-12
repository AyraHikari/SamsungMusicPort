.class final Lcom/facebook/internal/FetchedAppSettingsManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

.field final synthetic val$callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$3;->val$callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$3;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettingsManager$3;->val$callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$3;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    invoke-interface {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;->onSuccess(Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method
