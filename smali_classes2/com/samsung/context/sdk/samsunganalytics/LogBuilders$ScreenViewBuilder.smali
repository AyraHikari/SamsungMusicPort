.class public Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;
.super Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/LogBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenViewBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder<",
        "Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;-><init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$1;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;
    .locals 0

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->a:Ljava/util/Map;

    const-string v1, "pn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Screen name cannot be null"

    .line 213
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "t"

    const-string v1, "pv"

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 217
    :goto_0
    invoke-super {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()J
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic d()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->a()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    move-result-object v0

    return-object v0
.end method
