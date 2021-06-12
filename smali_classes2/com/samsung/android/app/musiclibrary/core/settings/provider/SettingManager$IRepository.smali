.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRepository"
.end annotation


# virtual methods
.method public abstract getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
.end method

.method public abstract unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
.end method
