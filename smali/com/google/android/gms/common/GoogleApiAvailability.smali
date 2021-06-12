.class public Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/GoogleApiAvailability$zaa;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/google/android/gms/common/GoogleApiAvailability;


# instance fields
.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->c:Ljava/lang/Object;

    .line 199
    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 200
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b:I

    sput v0, Lcom/google/android/gms/common/GoogleApiAvailability;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    .line 55
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    .line 57
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    .line 59
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;ILcom/google/android/gms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 106
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 116
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 119
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 122
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 124
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 129
    invoke-static {p1, p3}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 133
    invoke-static {p1, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/16 p3, 0x12

    if-ne p2, p3, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p4, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 141
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 143
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 144
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification"

    .line 147
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 148
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 149
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 151
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 152
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 153
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 157
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    sget v0, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    sget v3, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    .line 160
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p3, v0, v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_4
    const v3, 0x108008a

    .line 164
    invoke-virtual {p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 165
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 168
    invoke-virtual {p4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 170
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->i()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 172
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->i()Z

    move-result p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->c()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_6

    const-string p4, "com.google.android.gms.availability"

    .line 177
    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ConnectionErrorMessages;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_5

    .line 181
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {v0, p4, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 182
    :cond_5
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 183
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 187
    :cond_6
    :goto_1
    invoke-virtual {p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    :cond_7
    invoke-virtual {p3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    const p2, 0x9b6d

    goto :goto_2

    :pswitch_0
    const/16 p2, 0x28c4

    .line 191
    sget-object p3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    :goto_2
    invoke-virtual {v2, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final c()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 83
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleApiAvailability;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/DialogRedirect;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/DialogRedirect;

    move-result-object p3

    .line 18
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/internal/zabq;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabq;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/internal/zabq;-><init>(Lcom/google/android/gms/common/api/internal/zabr;)V

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zabq;->a(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zabr;->a()V

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabq;->a()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "n"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(I)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p2    # Lcom/google/android/gms/common/api/internal/LifecycleFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p4, "d"

    .line 20
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    .line 22
    invoke-static {p2, p4, v0}, Lcom/google/android/gms/common/internal/DialogRedirect;->a(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/DialogRedirect;

    move-result-object p2

    .line 23
    invoke-static {p1, p3, p2, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 26
    invoke-static {p1, p2, p3, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result p2

    const/4 v1, 0x0

    .line 45
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 46
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;I)I
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final b(Landroid/content/Context;)V
    .locals 3

    .line 195
    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability$zaa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability$zaa;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    .line 196
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 31
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method
