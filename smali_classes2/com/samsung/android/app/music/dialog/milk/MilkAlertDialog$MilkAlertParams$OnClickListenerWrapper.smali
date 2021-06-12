.class Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnClickListenerWrapper"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic d:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->d:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->a:Ljava/lang/String;

    .line 469
    iput-object p3, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->b:Ljava/lang/String;

    .line 470
    iput-object p4, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->c:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
