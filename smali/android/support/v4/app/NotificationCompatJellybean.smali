.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 76
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .locals 4

    .line 204
    sget-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 208
    :try_start_0
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    const-string v1, "android.app.Notification$Action"

    .line 209
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    .line 210
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    .line 211
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 212
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "actionIntent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 213
    const-class v1, Landroid/app/Notification;

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    .line 214
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NotificationCompat"

    const-string v3, "Unable to access notification actions"

    .line 220
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NotificationCompat"

    const-string v3, "Unable to access notification actions"

    .line 217
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 223
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 8

    const-string v0, "allowedDataTypes"

    .line 262
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    new-instance v0, Landroid/support/v4/app/RemoteInput;

    const-string v1, "resultKey"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "label"

    .line 270
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v1, "choices"

    .line 271
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    const-string v1, "allowFreeFormInput"

    .line 272
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "extras"

    .line 273
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 300
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/app/RemoteInput;

    const/4 v1, 0x0

    .line 301
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 302
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 5

    .line 160
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 162
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    aget-object v2, v2, p1

    .line 166
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v3, "android.support.actionExtras"

    .line 168
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 174
    :goto_0
    sget-object p1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    sget-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 176
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 174
    invoke-static {p1, v3, v2, p0}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    .line 180
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    .line 181
    sput-boolean p0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 183
    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 1

    .line 153
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getActionFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 10

    const-string v0, "extras"

    .line 227
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.support.allowGeneratedReplies"

    .line 230
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v9, v1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 232
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    const-string v1, "icon"

    .line 233
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "title"

    .line 234
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v1, "actionIntent"

    .line 235
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/PendingIntent;

    const-string v1, "extras"

    .line 236
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v1, "remoteInputs"

    .line 237
    invoke-static {p0, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v7

    const-string v1, "dataOnlyRemoteInputs"

    .line 238
    invoke-static {p0, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 4

    .line 188
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-static {}, Landroid/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 193
    :cond_0
    :try_start_1
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "NotificationCompat"

    const-string v3, "Unable to access notification actions"

    .line 195
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    .line 196
    sput-boolean p0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 197
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 3

    .line 324
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 325
    instance-of v1, v0, [Landroid/os/Bundle;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    array-length v1, v0

    const-class v2, [Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 330
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0

    .line 326
    :cond_1
    :goto_0
    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method static getBundleForAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 4

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "icon"

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "actionIntent"

    .line 246
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "android.support.allowGeneratedReplies"

    .line 254
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    .line 255
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "remoteInputs"

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 6

    .line 87
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 92
    :try_start_1
    sget-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 93
    const-class v3, Landroid/app/Notification;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 94
    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    .line 95
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 99
    :cond_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    sput-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    .line 102
    :cond_2
    sget-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 104
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :cond_3
    :try_start_4
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 111
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 109
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_0
    sput-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    .line 114
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v0, "android.support.remoteInputs"

    .line 125
    invoke-static {p3, v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    const-string v1, "android.support.dataRemoteInputs"

    .line 128
    invoke-static {p3, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    const-string v2, "android.support.allowGeneratedReplies"

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v8, v0

    move-object v9, v8

    const/4 v10, 0x0

    .line 131
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v3, v0

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v10}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0
.end method

.method private static toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;
    .locals 3

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "resultKey"

    .line 279
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "label"

    .line 280
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "choices"

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v1, "allowFreeFormInput"

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extras"

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 286
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "allowedDataTypes"

    .line 291
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method private static toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 312
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 313
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 3

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 138
    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "android.support.remoteInputs"

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v1

    .line 140
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android.support.dataRemoteInputs"

    .line 145
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    const-string v0, "android.support.allowGeneratedReplies"

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result p1

    .line 147
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
