.class Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a()V

    .line 87
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "401"

    const-string v1, "5212"

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
