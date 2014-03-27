.class public Lcom/android/phone/QuickBackToInCallScreen;
.super Ljava/lang/Object;
.source "QuickBackToInCallScreen.java"


# static fields
.field private static final ACTION_REFRESH_PHONE_QUICK_VIEW:Ljava/lang/String; = "com.baidu.phone.refresh.quickview"

.field private static final BASE_TIME:Ljava/lang/String; = "baseTime"

.field private static final IS_MUTE:Ljava/lang/String; = "isMute"

.field private static final IS_ONLY_ONE_HOLDING_PHONE:Ljava/lang/String; = "isOnlyOneHoldingPhone"

.field private static final IS_SHOW_BLUETOOTH:Ljava/lang/String; = "isShowBluetooth"

.field private static final IS_SPEAKER_ON:Ljava/lang/String; = "isSpeakerOn"

.field private static final IS_TRY_TO_SHOW_QUICK_VIEW:Ljava/lang/String; = "isShow"

.field private static final SHOW_CHRONOMETER:Ljava/lang/String; = "show_chronometer"

.field private static SIM_1_GREEN:I = 0x0

.field private static SIM_2_BLUE:I = 0x0

.field private static final SLOT_ID_0:I = 0x0

.field private static final SLOT_ID_1:I = 0x1

.field private static final WHICH_BACKGROUND:Ljava/lang/String; = "background"

.field public static sQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;


# instance fields
.field private IS_SHOW_CHRONOMETER:Z

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/QuickBackToInCallScreen;->SIM_1_GREEN:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/QuickBackToInCallScreen;->SIM_2_BLUE:I

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/QuickBackToInCallScreen;->IS_SHOW_CHRONOMETER:Z

    .line 61
    iput-object p1, p0, Lcom/android/phone/QuickBackToInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    .line 62
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    iput-object p1, p0, Lcom/android/phone/QuickBackToInCallScreen;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 65
    return-void
.end method

.method public static getInstance(Lcom/android/phone/PhoneApp;)Lcom/android/phone/QuickBackToInCallScreen;
    .locals 1
    .parameter "app"

    .prologue
    .line 54
    sget-object v0, Lcom/android/phone/QuickBackToInCallScreen;->sQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/phone/QuickBackToInCallScreen;

    invoke-direct {v0, p0}, Lcom/android/phone/QuickBackToInCallScreen;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/QuickBackToInCallScreen;->sQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/phone/QuickBackToInCallScreen;->sQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    return-object v0
.end method

.method private isMute()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowSpeaker()Z
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/phone/QuickBackToInCallScreen;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 152
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 154
    .local v1, showNotification:Z
    :goto_0
    return v1

    .line 152
    .end local v1           #showNotification:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateQuickBackToInCallScreenView()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 76
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v8

    .line 77
    .local v8, hasRingingCall:Z
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    .line 78
    .local v6, hasActiveCall:Z
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    .line 79
    .local v7, hasHoldingCall:Z
    const-wide/16 v2, 0x0

    .line 82
    .local v2, chronometerBaseTime:J
    if-eqz v8, :cond_4

    .line 83
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 89
    .local v4, currentCall:Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 93
    .local v5, currentConn:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 104
    .local v0, callDurationMsec:J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-lez v12, :cond_6

    .line 106
    iput-boolean v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->IS_SHOW_CHRONOMETER:Z

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v12, v0

    .line 117
    .end local v0           #callDurationMsec:J
    :cond_0
    :goto_1
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v12

    if-nez v12, :cond_1

    .line 124
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.baidu.phone.refresh.quickview"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, showQuickViewOnStatusBar:Landroid/content/Intent;
    const-string v12, "baseTime"

    invoke-virtual {v9, v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    const-string v12, "show_chronometer"

    iget-boolean v13, p0, Lcom/android/phone/QuickBackToInCallScreen;->IS_SHOW_CHRONOMETER:Z

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v12, "isShow"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string v12, "isSpeakerOn"

    invoke-direct {p0}, Lcom/android/phone/QuickBackToInCallScreen;->isShowSpeaker()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v12, "isMute"

    invoke-direct {p0}, Lcom/android/phone/QuickBackToInCallScreen;->isMute()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v12, "isOnlyOneHoldingPhone"

    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    :goto_2
    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v10, "isShowBluetooth"

    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v12

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    .end local v9           #showQuickViewOnStatusBar:Landroid/content/Intent;
    :cond_1
    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v12, :cond_3

    .line 141
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.baidu.phone.refresh.quickview"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v9       #showQuickViewOnStatusBar:Landroid/content/Intent;
    const-string v10, "isShow"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v10, p0, Lcom/android/phone/QuickBackToInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    .end local v9           #showQuickViewOnStatusBar:Landroid/content/Intent;
    :cond_3
    return-void

    .line 84
    .end local v4           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v5           #currentConn:Lcom/android/internal/telephony/Connection;
    :cond_4
    if-eqz v6, :cond_5

    .line 85
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .restart local v4       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_0

    .line 87
    .end local v4           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_5
    iget-object v12, p0, Lcom/android/phone/QuickBackToInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .restart local v4       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_0

    .line 109
    .restart local v0       #callDurationMsec:J
    .restart local v5       #currentConn:Lcom/android/internal/telephony/Connection;
    :cond_6
    iput-boolean v11, p0, Lcom/android/phone/QuickBackToInCallScreen;->IS_SHOW_CHRONOMETER:Z

    goto/16 :goto_1

    .end local v0           #callDurationMsec:J
    .restart local v9       #showQuickViewOnStatusBar:Landroid/content/Intent;
    :cond_7
    move v10, v11

    .line 130
    goto :goto_2
.end method
