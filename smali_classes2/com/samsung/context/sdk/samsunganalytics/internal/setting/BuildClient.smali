.class public Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# static fields
.field private static a:Z = true


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->d:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Setting Sender"

    const-string v2, "No status log"

    .line 45
    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 49
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ts"

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    const-string v3, "st"

    .line 51
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "sti"

    .line 56
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->b:Landroid/content/Context;

    sget-object v8, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v7, v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->e(Ljava/util/Map;)I

    move-result v7

    if-nez v7, :cond_1

    const-string v5, "Setting Sender"

    const-string v6, "Send success"

    .line 60
    invoke-static {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    const-string v7, "Setting Sender"

    const-string v8, "Send fail"

    .line 63
    invoke-static {v7, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "status_sent_date"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return v1
.end method
