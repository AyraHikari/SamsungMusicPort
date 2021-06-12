.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# static fields
.field public static final METHOD_SEM_SET_BOTTOM_COLOR:Ljava/lang/String; = "semSetBottomColor"

.field public static final WIDGET_ONE_LINE_MAX_HEIGHT_LAND:I = 0x3c

.field public static final WIDGET_ONE_LINE_MAX_HEIGHT_PORT:I = 0x7e


# virtual methods
.method public abstract setBottomColor(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation
.end method

.method public abstract setConfiguration(II)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
.end method

.method public abstract setEmptyView(II)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
.end method

.method public abstract setPendingIntentTemplate(ILandroid/app/PendingIntent;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
.end method

.method public abstract setRemoteAdapter(ILandroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
.end method
